// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_fixed_costs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MonthlyFixedCosts _$$_MonthlyFixedCostsFromJson(Map<String, dynamic> json) =>
    _$_MonthlyFixedCosts(
      month: DateTime.parse(json['month'] as String),
      fixedCostTotal: json['fixedCostTotal'] as num,
      variableCostTotal: json['variableCostTotal'] as num,
    );

Map<String, dynamic> _$$_MonthlyFixedCostsToJson(
        _$_MonthlyFixedCosts instance) =>
    <String, dynamic>{
      'month': instance.month.toIso8601String(),
      'fixedCostTotal': instance.fixedCostTotal,
      'variableCostTotal': instance.variableCostTotal,
    };
