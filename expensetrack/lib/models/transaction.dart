import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    /// The ID of the category.
    ///
    /// Will be ignored when writing.
    int? id,

    /// The date that the transaction was made.
    ///
    /// Must be formatted according to the ISO 8601 standard.
    required String date,

    /// The account number that the transaction belongs to.
    ///
    /// Max 20 characters.
    required String account,
    
    /// The verification number of the transaction.
    ///
    /// Max 20 characters.
    String? verificationNumber,

    /// The Text from the bank for the transaction.
    /// 
    /// Max 45 characters.
    required String text,

    /// A description of the transaction.
    /// 
    /// Max 255 characters.
    String? description,

    required num amount,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}

@freezed
class GetTransactionsBody with _$GetTransactionsBody {
  factory GetTransactionsBody({
    required num totalCount,
    required List<Transaction> transactions,
  }) = _GetTransactionsBody;

factory GetTransactionsBody.fromJson(Map<String, dynamic> json) => 
_$GetTransactionsBodyFromJson(json);
}