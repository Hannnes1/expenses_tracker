// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_fixed_costs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyFixedCostsImpl _$$MonthlyFixedCostsImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthlyFixedCostsImpl(
      month: DateTime.parse(json['month'] as String),
      fixedCostTotal: json['fixedCostTotal'] as num,
      variableCostTotal: json['variableCostTotal'] as num,
    );

Map<String, dynamic> _$$MonthlyFixedCostsImplToJson(
        _$MonthlyFixedCostsImpl instance) =>
    <String, dynamic>{
      'month': instance.month.toIso8601String(),
      'fixedCostTotal': instance.fixedCostTotal,
      'variableCostTotal': instance.variableCostTotal,
    };
