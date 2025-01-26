import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    required String id,
    required DateTime date,
    required String text,
    required num amount,
    required Account account,
    required Category category,
    required bool fixedCost,
    String? description,
  }) = _Transaction;

factory Transaction.fromJson(Map<String, dynamic> json) => 
_$TransactionFromJson(json);
}

@freezed
class CreateTransaction with _$CreateTransaction {
  factory CreateTransaction({
    required DateTime date,
    required String text,
    required num amount,
    required String accountId,
    required String categoryId,
    required bool fixedCost,
    required String? description,
  }) = _CreateTransaction;

factory CreateTransaction.fromJson(Map<String, dynamic> json) => 
_$CreateTransactionFromJson(json);
}