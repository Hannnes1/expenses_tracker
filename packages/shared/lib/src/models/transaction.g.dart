// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      text: json['text'] as String,
      amount: json['amount'] as num,
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      fixedCost: json['fixedCost'] as bool,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'text': instance.text,
      'amount': instance.amount,
      'account': instance.account,
      'category': instance.category,
      'fixedCost': instance.fixedCost,
      'description': instance.description,
    };

_$CreateTransactionImpl _$$CreateTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTransactionImpl(
      date: DateTime.parse(json['date'] as String),
      text: json['text'] as String,
      amount: json['amount'] as num,
      accountId: json['accountId'] as String,
      categoryId: json['categoryId'] as String,
      fixedCost: json['fixedCost'] as bool,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CreateTransactionImplToJson(
        _$CreateTransactionImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'text': instance.text,
      'amount': instance.amount,
      'accountId': instance.accountId,
      'categoryId': instance.categoryId,
      'fixedCost': instance.fixedCost,
      'description': instance.description,
    };
