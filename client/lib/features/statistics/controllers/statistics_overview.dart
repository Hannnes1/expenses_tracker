import 'package:expensetrack/features/statistics/repositories/statistics_repository.dart';
import 'package:expensetrack/features/transactions/controllers/categories.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'statistics_overview.g.dart';

@riverpod
Future<StatisticsOverview> statisticsOverview(Ref ref) async {
  return ref.watch(statisticsRepositoryProvider).getOverview();
}

@riverpod
Future<(StatisticsOverview, List<Category>)> statisticsPageData(Ref ref) async {
  return (
    await ref.watch(statisticsOverviewProvider.future),
    await ref.watch(categoriesProvider.future),
  );
}
