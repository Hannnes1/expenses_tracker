import 'package:expensetrack/core/widgets/currency_text.dart';
import 'package:expensetrack/core/widgets/provider_error.dart';
import 'package:expensetrack/core/widgets/shimmer_loading.dart';
import 'package:expensetrack/features/statistics/controllers/statistics_overview.dart';
import 'package:expensetrack/features/statistics/ui/widgets/monthly_stats_graph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatisticsPage extends ConsumerWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => await ref.refresh(statisticsOverviewProvider.future),
        child: ListView(
          padding: const EdgeInsets.all(16),
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
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Monthly Average',
                            style: textTheme.headlineSmall,
                          ),
                          Text(
                            'Your average monthly expenses the last 12 months.',
                            style: textTheme.bodySmall,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Average fixed costs: '),
                              CurrencyText(
                                statistics.yearMonthlyAverage.averageFixedCost,
                                style: textTheme.titleMedium,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Average variable costs: '),
                              CurrencyText(
                                statistics.yearMonthlyAverage.averageVariableCost,
                                style: textTheme.titleMedium,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Total average: '),
                              CurrencyText(
                                statistics.yearMonthlyAverage.totalAverage,
                                style: textTheme.titleLarge,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const MonthlyStatsGraph(
                    showSum: true,
                    showSeparated: false,
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
