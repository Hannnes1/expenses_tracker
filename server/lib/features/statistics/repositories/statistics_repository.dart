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

  Future<List<MonthlyCategoryTotals>> getMonthlyCategoryTotals(String userId) async {
    final result = await connection.executeNamed(
      'SELECT * FROM monthly_category_totals WHERE user_id = @userId',
      parameters: {
        'userId': userId,
      },
    );

    // There is a bug in the postgres package, where the view name is empty. The "??" is here so that the code will
    // work when the bug is fixed.
    return result.map((e) => MonthlyCategoryTotals.fromDatabase(e.toColumnMap())).toList();
  }

  Future<List<MonthlyFixedCosts>> getMonthlyFixedCosts(String userId) async {
    final result = await connection.executeNamed(
      'SELECT * FROM monthly_fixed_costs WHERE user_id = @userId',
      parameters: {
        'userId': userId,
      },
    );

    return result.map((e) => MonthlyFixedCosts.fromDatabase(e.toColumnMap())).toList();
  }

  Future<YearMonthlyAverage> getYearMonthlyAverage(String userId) async {
    final result = await connection.executeNamed( 
      'SELECT * FROM year_monthly_average WHERE user_id = @userId',
      parameters: {
        'userId': userId,
      },
    );

    if (result.isEmpty) {
      return YearMonthlyAverage(
        averageFixedCost: 0,
        averageVariableCost: 0,
      );
    }

    return YearMonthlyAverage.fromDatabase(result.first.toColumnMap());
  }
}
