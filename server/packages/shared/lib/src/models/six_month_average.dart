import 'package:freezed_annotation/freezed_annotation.dart';

part 'six_month_average.freezed.dart';
part 'six_month_average.g.dart';

@freezed
class SixMonthAverage with _$SixMonthAverage {
  factory SixMonthAverage({
    required num averageFixedCost,
    required num averageVariableCost,
  }) = _SixMonthAverage;

  factory SixMonthAverage.fromJson(Map<String, dynamic> json) => _$SixMonthAverageFromJson(json);

  static SixMonthAverage fromDatabase(Map<String, dynamic> row) {
    return SixMonthAverage(
      averageFixedCost: num.parse(row['average_fixed_cost']),
      averageVariableCost: num.parse(row['average_variable_cost']),
    );
  }
}
