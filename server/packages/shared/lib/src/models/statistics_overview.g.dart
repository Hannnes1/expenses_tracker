// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatisticsOverview _$$_StatisticsOverviewFromJson(
        Map<String, dynamic> json) =>
    _$_StatisticsOverview(
      sixMonthAverage: SixMonthAverage.fromJson(
          json['sixMonthAverage'] as Map<String, dynamic>),
      monthlyFixedCosts: (json['monthlyFixedCosts'] as List<dynamic>)
          .map((e) => MonthlyFixedCosts.fromJson(e as Map<String, dynamic>))
          .toList(),
      monthlyCategoryTotals: (json['monthlyCategoryTotals'] as List<dynamic>)
          .map((e) => MonthlyCategoryTotals.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StatisticsOverviewToJson(
        _$_StatisticsOverview instance) =>
    <String, dynamic>{
      'sixMonthAverage': instance.sixMonthAverage,
      'monthlyFixedCosts': instance.monthlyFixedCosts,
      'monthlyCategoryTotals': instance.monthlyCategoryTotals,
    };
