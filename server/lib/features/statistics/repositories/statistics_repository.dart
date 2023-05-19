import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';
import 'package:shared/shared.dart';

Middleware statisticsRepositoryProvider() {
  return provider<Future<StatisticsRepository>>(
    (context) async => StatisticsRepository(
      await context.read<Future<PostgreSQLConnection>>(),
    ),
  );
}

class StatisticsRepository {
  StatisticsRepository(this.connection);

  final PostgreSQLConnection connection;

  Future<List<MonthlyCategoryTotals>> getMonthlyCategoryTotals(String userId) async {
    final result = await connection.mappedResultsQuery(
      'SELECT * FROM monthly_category_totals WHERE user_id = @userId',
      substitutionValues: {
        'userId': userId,
      },
    );

    // There is a bug in the postgres package, where the view name is empty. The "??" is here so that the code will
    // work when the bug is fixed.
    return result.map((e) => MonthlyCategoryTotals.fromDatabase(e['monthly_category_totals'] ?? e['']!)).toList();
  }

  Future<List<MonthlyFixedCosts>> getMonthlyFixedCosts(String userId) async {
    final result = await connection.mappedResultsQuery(
      'SELECT * FROM monthly_fixed_costs WHERE user_id = @userId',
      substitutionValues: {
        'userId': userId,
      },
    );

    return result.map((e) => MonthlyFixedCosts.fromDatabase(e['monthly_fixed_costs'] ?? e['']!)).toList();
  }

  Future<YearMonthlyAverage> getYearMonthlyAverage(String userId) async {
    final result = await connection.mappedResultsQuery(
      'SELECT * FROM year_monthly_average WHERE user_id = @userId',
      substitutionValues: {
        'userId': userId,
      },
    );

    return YearMonthlyAverage.fromDatabase(result.first['year_monthly_average'] ?? result.first['']!);
  }
}
