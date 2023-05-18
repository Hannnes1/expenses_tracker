// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_category_totals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MonthlyCategoryTotals _$$_MonthlyCategoryTotalsFromJson(
        Map<String, dynamic> json) =>
    _$_MonthlyCategoryTotals(
      month: DateTime.parse(json['month'] as String),
      categoryId: json['categoryId'] as String,
      negativeAmount: json['negativeAmount'] as num,
      positiveAmount: json['positiveAmount'] as num,
      totalAmount: json['totalAmount'] as num,
    );

Map<String, dynamic> _$$_MonthlyCategoryTotalsToJson(
        _$_MonthlyCategoryTotals instance) =>
    <String, dynamic>{
      'month': instance.month.toIso8601String(),
      'categoryId': instance.categoryId,
      'negativeAmount': instance.negativeAmount,
      'positiveAmount': instance.positiveAmount,
      'totalAmount': instance.totalAmount,
    };
