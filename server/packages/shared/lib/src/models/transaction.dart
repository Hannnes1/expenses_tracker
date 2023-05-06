import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    required String id,
    required DateTime date,
    required String text,
    required num amount,
    required String accountId,
    required String categoryId,
    required bool fixedCost,
    String? description,
  }) = _Transaction;

factory Transaction.fromJson(Map<String, dynamic> json) => 
_$TransactionFromJson(json);
}