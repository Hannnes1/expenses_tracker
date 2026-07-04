import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/src/models/monthly_category_totals.dart';
import 'package:shared/src/models/year_monthly_average.dart';

part 'statistics_overview.freezed.dart';
part 'statistics_overview.g.dart';

@freezed
sealed class StatisticsOverview with _$StatisticsOverview {
  factory StatisticsOverview({
    required YearMonthlyAverage yearMonthlyAverage,
    required YearMonthlyAverage previousYearMonthlyAverage,
    required List<MonthlyCategoryTotals> monthlyCategoryTotals,
    required Map<String, num> categoryAverage,
  }) = _StatisticsOverview;

  factory StatisticsOverview.fromJson(Map<String, dynamic> json) =>
      _$StatisticsOverviewFromJson(json);
}
