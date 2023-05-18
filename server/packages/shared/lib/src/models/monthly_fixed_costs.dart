import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_fixed_costs.freezed.dart';
part 'monthly_fixed_costs.g.dart';

@freezed
class MonthlyFixedCosts with _$MonthlyFixedCosts {
  factory MonthlyFixedCosts({
    /// The month for which the totals are calculated.
    ///
    /// The rest of the date (day and time) should be ignored.
    required DateTime month,
    required num fixedCostTotal,
    required num variableCostTotal,
  }) = _MonthlyFixedCosts;

  factory MonthlyFixedCosts.fromJson(Map<String, dynamic> json) => _$MonthlyFixedCostsFromJson(json);

  static MonthlyFixedCosts fromDatabase(Map<String, dynamic> row) {
    return MonthlyFixedCosts(
      month: row['month'],
      fixedCostTotal: num.parse(row['fixed_cost_total']),
      variableCostTotal: num.parse(row['variable_cost_total']),
    );
  }
}
