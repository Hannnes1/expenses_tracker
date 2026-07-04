// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      text: json['text'] as String,
      amount: json['amount'] as num,
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      fixedCost: json['fixedCost'] as bool,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
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

_CreateTransaction _$CreateTransactionFromJson(Map<String, dynamic> json) =>
    _CreateTransaction(
      date: DateTime.parse(json['date'] as String),
      text: json['text'] as String,
      amount: json['amount'] as num,
      accountId: json['accountId'] as String,
      categoryId: json['categoryId'] as String,
      fixedCost: json['fixedCost'] as bool,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CreateTransactionToJson(_CreateTransaction instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'text': instance.text,
      'amount': instance.amount,
      'accountId': instance.accountId,
      'categoryId': instance.categoryId,
      'fixedCost': instance.fixedCost,
      'description': instance.description,
    };
