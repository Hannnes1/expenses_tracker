import 'package:expensetrack/core/theme/custom_colors.dart';
import 'package:expensetrack/core/widgets/card_with_title.dart';
import 'package:expensetrack/core/widgets/currency_text.dart';
import 'package:expensetrack/core/widgets/provider_error.dart';
import 'package:expensetrack/core/widgets/shimmer_loading.dart';
import 'package:expensetrack/features/statistics/controllers/statistics_overview.dart';
import 'package:expensetrack/features/statistics/controllers/statistics_range.dart';
import 'package:expensetrack/features/statistics/ui/widgets/category_breakdown.dart';
import 'package:expensetrack/features/statistics/ui/widgets/monthly_stats_graph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatisticsPage extends ConsumerWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final range = ref.watch(statisticsRangeProvider);
    final rangeLabel = range.label.toLowerCase();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistics'),
      ),
      body: RefreshIndicator(
        onRefresh: () async =>
            await ref.refresh(statisticsOverviewProvider.future),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const _RangeSelector(),
            const SizedBox(height: 16),
            ...ref.watch(statisticsPageDataProvider).when(
                  error: (error, stackTrace) => [
                    ProviderError(
                      error: error,
                      stackTrace: stackTrace,
                      errorText: 'The statistics could not be loaded.',
                    ),
                  ],
                  loading: () => const [
                    ShimmerLoading(child: LoadingPlaceholder(height: 140)),
                    SizedBox(height: 16),
                    ShimmerLoading(child: LoadingPlaceholder(height: 180)),
                    SizedBox(height: 16),
                    ShimmerLoading(child: LoadingPlaceholder(height: 340)),
                  ],
                  data: (data) {
                    final statistics = data.$1;
                    final categories = data.$2;

                    return [
                      CardWithTitle(
                        title: 'Monthly average',
                        subtitle:
                            'Your average monthly cash flow the $rangeLabel.',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Total average: '),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CurrencyText(
                                      statistics
                                          .yearMonthlyAverage.totalAverage,
                                      style: textTheme.headlineSmall,
                                    ),
                                    const SizedBox(width: 8),
                                    _TrendIndicator(
                                      current: statistics
                                          .yearMonthlyAverage.totalAverage,
                                      previous: statistics
                                          .previousYearMonthlyAverage
                                          .totalAverage,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Average fixed cash flow: '),
                                CurrencyText(
                                  statistics
                                      .yearMonthlyAverage.averageFixedCost,
                                  style: textTheme.titleMedium,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Average variable cash flow: '),
                                CurrencyText(
                                  statistics
                                      .yearMonthlyAverage.averageVariableCost,
                                  style: textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CardWithTitle(
                        title: 'Category breakdown',
                        subtitle:
                            'Categorized average monthly cash flow the $rangeLabel.',
                        child: CategoryBreakdown(
                          categoryAverages: statistics.categoryAverage,
                          categories: categories,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CardWithTitle(
                        title: 'Month by month',
                        subtitle:
                            'Your cash flow month by month, the $rangeLabel.',
                        child: const MonthlyStatsGraph(),
                      ),
                    ];
                  },
                ),
          ],
        ),
      ),
    );
  }
}

class _RangeSelector extends ConsumerWidget {
  const _RangeSelector();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(statisticsRangeProvider);

    return SegmentedButton<StatisticsRange>(
      segments: StatisticsRange.values
          .map(
            (range) => ButtonSegment(
              value: range,
              label: Text('${range.months}mo'),
            ),
          )
          .toList(),
      selected: {selected},
      onSelectionChanged: (selection) =>
          ref.read(statisticsRangeProvider.notifier).select(selection.first),
    );
  }
}

/// Shows the percentage change of [current] vs [previous], with an up/down
/// arrow. Hidden if there is no previous period to compare against.
class _TrendIndicator extends StatelessWidget {
  const _TrendIndicator({
    required this.current,
    required this.previous,
  });

  final num current;
  final num previous;

  @override
  Widget build(BuildContext context) {
    if (previous == 0) {
      return const SizedBox.shrink();
    }

    final customColors = Theme.of(context).extension<CustomColors>()!;
    final textTheme = Theme.of(context).textTheme;

    final change = current - previous;
    final percentage = (change / previous.abs()) * 100;

    final IconData icon;
    final Color? color;
    if (change > 0) {
      icon = Icons.arrow_upward;
      color = customColors.positive;
    } else if (change < 0) {
      icon = Icons.arrow_downward;
      color = customColors.negative;
    } else {
      icon = Icons.remove;
      color = textTheme.bodySmall?.color;
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: color),
        Text(
          '${percentage.abs().toStringAsFixed(0)}%',
          style: textTheme.bodySmall?.copyWith(color: color),
        ),
      ],
    );
  }
}
