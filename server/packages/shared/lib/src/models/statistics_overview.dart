import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/src/models/monthly_category_totals.dart';
import 'package:shared/src/models/monthly_fixed_costs.dart';
import 'package:shared/src/models/six_month_average.dart';

part 'statistics_overview.freezed.dart';
part 'statistics_overview.g.dart';

@freezed
class StatisticsOverview with _$StatisticsOverview {
  factory StatisticsOverview({
    required SixMonthAverage sixMonthAverage,
    required List<MonthlyFixedCosts> monthlyFixedCosts,
    required List<MonthlyCategoryTotals> monthlyCategoryTotals,
  }) = _StatisticsOverview;

factory StatisticsOverview.fromJson(Map<String, dynamic> json) => 
_$StatisticsOverviewFromJson(json);
}