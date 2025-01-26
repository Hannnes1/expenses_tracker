import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_category_totals.freezed.dart';
part 'monthly_category_totals.g.dart';

@freezed
class MonthlyCategoryTotals with _$MonthlyCategoryTotals {
  factory MonthlyCategoryTotals({
    /// The month for which the totals are calculated.
    ///
    /// The rest of the date (day and time) should be ignored.
    required DateTime month,
    required String categoryId,
    required num negativeAmount,
    required num positiveAmount,
    required num totalAmount,
  }) = _MonthlyCategoryTotals;

  factory MonthlyCategoryTotals.fromJson(Map<String, dynamic> json) => _$MonthlyCategoryTotalsFromJson(json);

  static MonthlyCategoryTotals fromDatabase(Map<String, dynamic> row) {
    return MonthlyCategoryTotals(
      month: row['month'],
      categoryId: row['category_id'],
      positiveAmount: num.parse(row['positive_amount']),
      negativeAmount: num.parse(row['negative_amount']),
      totalAmount: num.parse(row['total_amount']),
    );
  }
}
