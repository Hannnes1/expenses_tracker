import 'package:expensetrack/features/statistics/repositories/statistics_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'statistics_overview.g.dart';

@riverpod
Future<StatisticsOverview> statisticsOverview(StatisticsOverviewRef ref) {
  return ref.watch(statisticsRepositoryProvider).getOverview();
}