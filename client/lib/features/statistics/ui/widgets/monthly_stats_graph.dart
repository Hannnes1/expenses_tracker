import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/core/widgets/provider_error.dart';
import 'package:expensetrack/core/widgets/shimmer_loading.dart';
import 'package:expensetrack/features/statistics/controllers/monthly_category_totals.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared/shared.dart';

/// A graph that shows the monthly cash flow for each category.
class MonthlyStatsGraph extends ConsumerWidget {
  const MonthlyStatsGraph({
    super.key,
    this.showSeparated = true,
    this.showSum = false,
  });

  /// Whether to show each category as a separated line.
  final bool showSeparated;

  /// Whether to show the sum of all categories as a line.
  final bool showSum;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 300,
      child: ref.watch(categorizedMonthlyCategoryTotalsProvider).when(
            // Don't show loading indicator when a dependency is reloaded,
            // which happens when pulling to refresh the statistics page.
            skipLoadingOnReload: true,
            error: (error, stackTrace) => ProviderError(
              error: error,
              stackTrace: stackTrace,
              errorText: 'The statistics could not be loaded.',
            ),
            loading: () => const ShimmerLoading(
              child: LoadingPlaceholder(),
            ),
            data: (data) => _Graph(
              data: data,
              showSeparated: showSeparated,
              showSum: showSum,
            ),
          ),
    );
  }
}

class _Graph extends ConsumerWidget {
  const _Graph({
    required this.data,
    required this.showSeparated,
    required this.showSum,
  });

  final Map<Category, List<MonthlyCategoryTotals>> data;

  final bool showSeparated;
  final bool showSum;

  Map<DateTime, num> _monthlySum() {
    final sum = <DateTime, num>{};

    for (final category in data.entries) {
      for (final month in category.value) {
        sum.update(
          month.month,
          (value) => value + month.totalAmount,
          ifAbsent: () => month.totalAmount,
        );
      }
    }

    return sum;
  }

  // Get the visible data point with the highest value.
  num get _maxY {
    if (showSeparated) {
      return data.values.expand((element) => element).map((e) => e.totalAmount).reduce(
            // For each element, return the highest value.
            (value, element) => value > element ? value : element,
          );
    }
    return _monthlySum().values.reduce(
          (value, element) => value > element ? value : element,
        );
  }

  // Get the visible data point with the lowest value.
  num get _minY {
    if (showSeparated) {
      return data.values.expand((element) => element).map((e) => e.totalAmount).reduce(
            (value, element) => value < element ? value : element,
          );
    }
    return _monthlySum().values.reduce(
          (value, element) => value < element ? value : element,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final yAxisPadding = (_maxY - _minY) * 0.1;

    final monthlySum = _monthlySum();

    final yAxisInterval = (_maxY - _minY) ~/ 4 ~/ 1000 * 1000.0;

    Widget buildBottomTitle(double value, TitleMeta meta) {
      final month = _monthlySum().keys.toList()[value.toInt()];

      return Text(
        month.shortMonthName(),
        style: textTheme.labelSmall,
      );
    }

    LineChartBarData drawLineChartBar({required List<FlSpot> spots}) {
      return LineChartBarData(
        color: colorScheme.primary,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        spots: spots,
        belowBarData: BarAreaData(
          show: true,
          color: colorScheme.primary.withOpacity(0.2),
        ),
      );
    }

    return LineChart(
      LineChartData(
        // Round the max and min values to the nearest thousand, after adding
        // padding.
        maxY: ((_maxY + yAxisPadding) / 1000).ceil() * 1000,
        minY: ((_minY - yAxisPadding) / 1000).floor() * 1000,
        gridData: FlGridData(
          show: true,
          drawVerticalLine: true,
          horizontalInterval: yAxisInterval,
          verticalInterval: 1,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: theme.dividerColor,
              strokeWidth: 1,
            );
          },
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: theme.dividerColor,
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          topTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: buildBottomTitle,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: yAxisInterval,
              reservedSize: 40,
            ),
          ),
        ),
        lineBarsData: [
          if (showSeparated)
            ...data.entries.map(
              (category) => drawLineChartBar(
                spots: category.value
                    .map(
                      (e) => FlSpot(
                        // Use the index of the month as the x value.
                        category.value.indexOf(e).toDouble(),
                        e.totalAmount.toDouble(),
                      ),
                    )
                    .toList(),
              ),
            ),
          if (showSum)
            drawLineChartBar(
              spots: monthlySum.entries
                  .map(
                    (e) => FlSpot(
                      monthlySum.keys.toList().indexOf(e.key).toDouble(),
                      e.value.toDouble(),
                    ),
                  )
                  .toList(),
            ),
        ],
      ),
    );
  }
}
