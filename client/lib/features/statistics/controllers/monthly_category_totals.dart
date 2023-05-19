import 'package:expensetrack/features/statistics/controllers/statistics_overview.dart';
import 'package:expensetrack/features/transactions/controllers/categories.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'monthly_category_totals.g.dart';

/// A map of categories and their data points.
@riverpod
Future<Map<Category, List<MonthlyCategoryTotals>>> categorizedMonthlyCategoryTotals(
  CategorizedMonthlyCategoryTotalsRef ref,
) async {
  final monthlyCategoryTotals = (await ref.watch(statisticsOverviewProvider.future)).monthlyCategoryTotals;

  final categoryIdsWithData = monthlyCategoryTotals.map((e) => e.categoryId).toSet();

  final categories = await ref.watch(categoriesProvider.future);

  final dataPoints = <Category, List<MonthlyCategoryTotals>>{};

  for (final categoryId in categoryIdsWithData) {
    final category = categories.firstWhere((element) => element.id == categoryId);

    dataPoints[category] = monthlyCategoryTotals.where((element) => element.categoryId == categoryId).toList();
  }

  return dataPoints;
}
