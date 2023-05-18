import 'package:expensetrack/core/widgets/provider_error.dart';
import 'package:expensetrack/core/widgets/shimmer_loading.dart';
import 'package:expensetrack/features/statistics/controllers/statistics_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatisticsPage extends ConsumerWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => ref.invalidate(statisticsOverviewProvider),
        child: ListView(
          children: ref.watch(statisticsOverviewProvider).when(
                error: (error, stackTrace) => [
                  ProviderError(
                    error: error,
                    stackTrace: stackTrace,
                    errorText: 'The statistics could not be loaded.',
                  ),
                ],
                loading: () => const [
                  LoadingPlaceholder(
                    height: 200,
                  ),
                ].map((e) => ShimmerLoading(child: e)).toList(),
                data: (statistics) => [
                  Text(statistics.sixMonthAverage.averageFixedCost.toString()),
                ],
              ),
        ),
      ),
    );
  }
}
