import 'dart:math';

import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/core/widgets/provider_error.dart';
import 'package:expensetrack/core/widgets/shimmer_loading.dart';
import 'package:expensetrack/features/statistics/controllers/monthly_category_totals.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared/shared.dart';

/// A list of colors to use when drawing the graph separated by category.
List<Color> lineChartColors = const [
  Color(0xFF3498db),
  Color(0xFF2ecc71),
  Color(0xFFff6f61),
  Color(0xFFffd700),
  Color(0xFFda70d6),
  Color(0xFF008080),
  Color(0xFFfa8072),
  Color(0xFF00ffff),
  Color(0xFFff5733),
  Color(0xFF00ffff),
];

/// A graph that shows the monthly cash flow for each category.
class MonthlyStatsGraph extends ConsumerStatefulWidget {
  const MonthlyStatsGraph({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MonthlyStatsGraphState();
}

class _MonthlyStatsGraphState extends ConsumerState<MonthlyStatsGraph> {
  bool _showSeparated = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return ref.watch(categorizedMonthlyCategoryTotalsProvider).when(
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
          data: (data) => Column(
            children: [
              SizedBox(
                height: 300,
                child: data.length < 2
                    ? const Center(
                        child: Text('No data to show'),
                      )
                    : _Graph(
                        data: data,
                        showSeparated: _showSeparated,
                      ),
              ),
              SwitchListTile(
                title: const Text('Show categorized'),
                value: _showSeparated,
                onChanged: (value) {
                  setState(() {
                    _showSeparated = value;
                  });
                },
              ),
              ClipRect(
                child: AnimatedAlign(
                  duration: const Duration(milliseconds: 200),
                  alignment: Alignment.topLeft,
                  heightFactor: _showSeparated ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Legend:',
                        style: textTheme.titleSmall,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ...data.entries.map(
                        (e) => Row(
                          children: [
                            Container(
                              width: 16,
                              height: 16,
                              color: lineChartColors[data.keys.toList().indexOf(e.key)],
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              e.key.name,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
  }
}

class _Graph extends ConsumerWidget {
  const _Graph({
    required this.data,
    required this.showSeparated,
  });

  final Map<Category, List<MonthlyCategoryTotals>> data;

  final bool showSeparated;

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

    // Set the interval to a quarter of the range, rounded to the nearest
    // thousand. Limit the interval to a minimum of 1000 (so it won't be zero).
    final yAxisInterval = max((_maxY - _minY) ~/ 4 ~/ 1000 * 1000.0, 1000.0);

    final monthLabelInterval = max(monthlySum.length / 8, 1.0);

    Widget buildBottomTitle(double value, TitleMeta meta) {
      final month = monthlySum.keys.toList()[value.toInt()];

      return RotatedBox(
        quarterTurns: 1,
        child: Text(
          month.shortMonthName(),
          style: textTheme.labelSmall,
        ),
      );
    }

    LineChartBarData drawLineChartBar({
      required List<FlSpot> spots,
      Color? color,
      bool fill = true,
    }) {
      return LineChartBarData(
        color: color ?? colorScheme.primary,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(
          show: false,
        ),
        spots: spots,
        belowBarData: BarAreaData(
          show: fill,
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
          topTitles: const AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: monthLabelInterval,
              getTitlesWidget: buildBottomTitle,
              reservedSize: 30,
            ),
          ),
          leftTitles: const AxisTitles(
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
                color: lineChartColors[data.keys.toList().indexOf(category.key)],
                fill: false,
              ),
            ),
          if (!showSeparated)
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
