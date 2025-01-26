// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsOverviewImpl _$$StatisticsOverviewImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticsOverviewImpl(
      yearMonthlyAverage: YearMonthlyAverage.fromJson(
          json['yearMonthlyAverage'] as Map<String, dynamic>),
      monthlyCategoryTotals: (json['monthlyCategoryTotals'] as List<dynamic>)
          .map((e) => MonthlyCategoryTotals.fromJson(e as Map<String, dynamic>))
          .toList(),
      last12MonthsCategoryAverage:
          Map<String, num>.from(json['last12MonthsCategoryAverage'] as Map),
    );

Map<String, dynamic> _$$StatisticsOverviewImplToJson(
        _$StatisticsOverviewImpl instance) =>
    <String, dynamic>{
      'yearMonthlyAverage': instance.yearMonthlyAverage,
      'monthlyCategoryTotals': instance.monthlyCategoryTotals,
      'last12MonthsCategoryAverage': instance.last12MonthsCategoryAverage,
    };
