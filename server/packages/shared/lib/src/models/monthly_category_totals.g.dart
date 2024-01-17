// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_category_totals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyCategoryTotalsImpl _$$MonthlyCategoryTotalsImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthlyCategoryTotalsImpl(
      month: DateTime.parse(json['month'] as String),
      categoryId: json['categoryId'] as String,
      negativeAmount: json['negativeAmount'] as num,
      positiveAmount: json['positiveAmount'] as num,
      totalAmount: json['totalAmount'] as num,
    );

Map<String, dynamic> _$$MonthlyCategoryTotalsImplToJson(
        _$MonthlyCategoryTotalsImpl instance) =>
    <String, dynamic>{
      'month': instance.month.toIso8601String(),
      'categoryId': instance.categoryId,
      'negativeAmount': instance.negativeAmount,
      'positiveAmount': instance.positiveAmount,
      'totalAmount': instance.totalAmount,
    };
