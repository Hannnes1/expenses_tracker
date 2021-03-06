// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as int?,
      date: JsonHelpers.dateFromJson(json['date'] as String),
      account: json['account'] as String,
      verificationNumber: json['verificationNumber'] as String?,
      text: json['text'] as String,
      description: json['description'] as String?,
      amount: json['amount'] as num,
      categoryId: json['categoryId'] as int?,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': JsonHelpers.dateToJson(instance.date),
      'account': instance.account,
      'verificationNumber': instance.verificationNumber,
      'text': instance.text,
      'description': instance.description,
      'amount': instance.amount,
      'categoryId': instance.categoryId,
    };

_$_GetTransactionsBody _$$_GetTransactionsBodyFromJson(
        Map<String, dynamic> json) =>
    _$_GetTransactionsBody(
      totalCount: json['totalCount'] as int,
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetTransactionsBodyToJson(
        _$_GetTransactionsBody instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'transactions': instance.transactions,
    };

_$_ResultByMonth _$$_ResultByMonthFromJson(Map<String, dynamic> json) =>
    _$_ResultByMonth(
      year: json['year'] as int,
      month: json['month'] as int,
      income: json['income'] as num,
      expenses: json['expenses'] as num,
      internal: json['internal'] as bool,
    );

Map<String, dynamic> _$$_ResultByMonthToJson(_$_ResultByMonth instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'income': instance.income,
      'expenses': instance.expenses,
      'internal': instance.internal,
    };
