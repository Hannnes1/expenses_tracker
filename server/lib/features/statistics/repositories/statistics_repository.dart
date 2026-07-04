import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';
import 'package:shared/shared.dart';

import '../../../core/db_helpers.dart';

Middleware statisticsRepositoryProvider() {
  return provider<Future<StatisticsRepository>>(
    (context) async => StatisticsRepository(
      await context.read<Future<Connection>>(),
    ),
  );
}

class StatisticsRepository {
  StatisticsRepository(this.connection);

  final Connection connection;

  /// Get the monthly cash flow totals for each category, from [startDate]
  /// onwards. Every month/category combination is present even where there
  /// was no activity (zero-filled by the underlying view), which callers
  /// rely on for correctly indexed charting and averaging.
  Future<List<MonthlyCategoryTotals>> getMonthlyCategoryTotals(
    String userId, {
    required DateTime startDate,
  }) async {
    final result = await connection.executeNamed(
      'SELECT * FROM monthly_category_totals WHERE user_id = @userId AND month >= @startDate',
      parameters: {
        'userId': userId,
        'startDate': startDate,
      },
    );

    // There is a bug in the postgres package, where the view name is empty. The "??" is here so that the code will
    // work when the bug is fixed.
    return result
        .map((e) => MonthlyCategoryTotals.fromDatabase(e.toColumnMap()))
        .toList();
  }

  /// Get the average monthly fixed/variable cash flow between [startDate] and [endDate].
  Future<YearMonthlyAverage> getYearMonthlyAverage(
    String userId, {
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final result = await connection.executeNamed(
      'SELECT '
      '  COALESCE(AVG(CASE WHEN fixed_cost THEN monthly_sum END), 0) AS average_fixed_cost, '
      '  COALESCE(AVG(CASE WHEN NOT fixed_cost THEN monthly_sum END), 0) AS average_variable_cost '
      'FROM ( '
      "  SELECT fixed_cost, DATE_TRUNC('month', date) AS month, SUM(amount) AS monthly_sum "
      '  FROM transactions '
      '  WHERE user_id = @userId AND date >= @startDate AND date <= @endDate '
      '  GROUP BY fixed_cost, month '
      ') AS subquery',
      parameters: {
        'userId': userId,
        'startDate': startDate,
        'endDate': endDate,
      },
    );

    // An aggregate query without GROUP BY always returns exactly one row, even when no
    // transactions matched, so this is safe without an emptiness check.
    return YearMonthlyAverage.fromDatabase(result.first.toColumnMap());
  }

  /// Get the average monthly cash flow per category between [startDate] and [endDate],
  /// ordered by magnitude descending.
  Future<Map<String, num>> getCategoryAverage(
    String userId, {
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final result = await connection.executeNamed(
      'SELECT category_id, AVG(total_amount) AS average_amount '
      'FROM monthly_category_totals '
      'WHERE user_id = @userId AND month >= @startDate AND month <= @endDate '
      'GROUP BY category_id '
      'ORDER BY average_amount DESC',
      parameters: {
        'userId': userId,
        'startDate': startDate,
        'endDate': endDate,
      },
    );

    return Map.fromIterable(
      result.map((e) => e.toColumnMap()),
      key: (e) => e['category_id'] as String,
      value: (e) => num.parse(e['average_amount']),
    );
  }
}
