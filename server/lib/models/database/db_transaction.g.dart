// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DbTransaction _$$_DbTransactionFromJson(Map<String, dynamic> json) =>
    _$_DbTransaction(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      date: DateTime.parse(json['date'] as String),
      text: json['text'] as String,
      amount: json['amount'] as num,
      accountId: json['accountId'] as String,
      categoryId: json['categoryId'] as String,
      fixedCost: json['fixedCost'] as bool,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_DbTransactionToJson(_$_DbTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'date': instance.date.toIso8601String(),
      'text': instance.text,
      'amount': instance.amount,
      'accountId': instance.accountId,
      'categoryId': instance.categoryId,
      'fixedCost': instance.fixedCost,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
