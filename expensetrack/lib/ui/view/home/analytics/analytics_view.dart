import 'package:expensetrack/ui/view/home/analytics/analytics_viewmodel.dart';
import 'package:expensetrack/app/extentions.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AnalyticsView extends StatelessWidget {
  const AnalyticsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AnalyticsViewModel>.reactive(
      viewModelBuilder: () => AnalyticsViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Padding(
        padding: const EdgeInsets.all(64),
        child: Center(
          child: model.resultByMonth.isEmpty
              ? null
              : LineChart(
                  LineChartData(
                    titlesData: FlTitlesData(
                      rightTitles: AxisTitles(),
                      topTitles: AxisTitles(),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 1,
                          getTitlesWidget: (value, meta) {
                            return Text(
                              model.resultByMonth[value.toInt()].month.toString(),
                            );
                          },
                        ),
                      ),
                    ),
                    lineBarsData: [
                      LineChartBarData(
                        spots: model.resultByMonth
                            .mapWithIndex((i, e) => FlSpot(i.toDouble(), (e.income + e.expenses).toDouble()))
                            .toList(),
                        isCurved: false,
                        barWidth: 4,
                        color: Colors.blue,
                        dotData: FlDotData(
                          show: false,
                        ),
                      ),
                      LineChartBarData(
                        spots: model.resultByMonth
                            .mapWithIndex((i, e) => FlSpot(i.toDouble(), e.income.toDouble()))
                            .toList(),
                        isCurved: false,
                        barWidth: 2,
                        color: Colors.green,
                        dotData: FlDotData(
                          show: false,
                        ),
                      ),
                      LineChartBarData(
                        spots: model.resultByMonth
                            .mapWithIndex((i, e) => FlSpot(i.toDouble(), e.expenses.toDouble()))
                            .toList(),
                        isCurved: false,
                        barWidth: 2,
                        color: Colors.red,
                        dotData: FlDotData(
                          show: false,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
