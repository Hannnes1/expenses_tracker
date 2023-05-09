// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_transaction.freezed.dart';

@freezed
class DbTransaction with _$DbTransaction {
  factory DbTransaction({
    String? id,
    required String userId,
    required DateTime date,
    required String text,
    required num amount,
    required String accountId,
    required String categoryId,
    required bool fixedCost,
    required String? description,
    DateTime? createdAt,
  }) = _DbTransaction;

  static DbTransaction fromDatabase(Map<String, dynamic> row) {
    return DbTransaction(
      id: row['id'],
      userId: row['user_id'],
      date: row['date'],
      text: row['text'],
      amount: num.parse(row['amount']),
      accountId: row['account_id'],
      categoryId: row['category_id'],
      fixedCost: row['fixed_cost'],
      description: row['description'],
      createdAt: row['created_at'],
    );
  }
}
