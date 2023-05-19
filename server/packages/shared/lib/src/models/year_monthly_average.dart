import 'package:freezed_annotation/freezed_annotation.dart';

part 'year_monthly_average.freezed.dart';
part 'year_monthly_average.g.dart';

@freezed
class YearMonthlyAverage with _$YearMonthlyAverage {
  YearMonthlyAverage._();

  factory YearMonthlyAverage({
    required num averageFixedCost,
    required num averageVariableCost,
  }) = _YearMonthlyAverage;

  get totalAverage => averageFixedCost + averageVariableCost;

  factory YearMonthlyAverage.fromJson(Map<String, dynamic> json) => _$YearMonthlyAverageFromJson(json);

  static YearMonthlyAverage fromDatabase(Map<String, dynamic> row) {
    return YearMonthlyAverage(
      averageFixedCost: num.parse(row['average_fixed_cost']),
      averageVariableCost: num.parse(row['average_variable_cost']),
    );
  }
}
