// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatisticsOverview _$StatisticsOverviewFromJson(Map<String, dynamic> json) =>
    _StatisticsOverview(
      yearMonthlyAverage: YearMonthlyAverage.fromJson(
          json['yearMonthlyAverage'] as Map<String, dynamic>),
      monthlyCategoryTotals: (json['monthlyCategoryTotals'] as List<dynamic>)
          .map((e) => MonthlyCategoryTotals.fromJson(e as Map<String, dynamic>))
          .toList(),
      last12MonthsCategoryAverage:
          Map<String, num>.from(json['last12MonthsCategoryAverage'] as Map),
    );

Map<String, dynamic> _$StatisticsOverviewToJson(_StatisticsOverview instance) =>
    <String, dynamic>{
      'yearMonthlyAverage': instance.yearMonthlyAverage,
      'monthlyCategoryTotals': instance.monthlyCategoryTotals,
      'last12MonthsCategoryAverage': instance.last12MonthsCategoryAverage,
    };
