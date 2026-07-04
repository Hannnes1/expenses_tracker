// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatisticsOverview _$StatisticsOverviewFromJson(Map<String, dynamic> json) =>
    _StatisticsOverview(
      yearMonthlyAverage: YearMonthlyAverage.fromJson(
          json['yearMonthlyAverage'] as Map<String, dynamic>),
      previousYearMonthlyAverage: YearMonthlyAverage.fromJson(
          json['previousYearMonthlyAverage'] as Map<String, dynamic>),
      monthlyCategoryTotals: (json['monthlyCategoryTotals'] as List<dynamic>)
          .map((e) => MonthlyCategoryTotals.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryAverage: Map<String, num>.from(json['categoryAverage'] as Map),
    );

Map<String, dynamic> _$StatisticsOverviewToJson(_StatisticsOverview instance) =>
    <String, dynamic>{
      'yearMonthlyAverage': instance.yearMonthlyAverage,
      'previousYearMonthlyAverage': instance.previousYearMonthlyAverage,
      'monthlyCategoryTotals': instance.monthlyCategoryTotals,
      'categoryAverage': instance.categoryAverage,
    };
