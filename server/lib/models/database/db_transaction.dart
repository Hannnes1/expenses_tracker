import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_transaction.freezed.dart';
part 'db_transaction.g.dart';

@freezed
class DbTransaction with _$DbTransaction {
  factory DbTransaction({
    required String? id,
    required String userId,
    required DateTime date,
    required String text,
    required num amount,
    required String accountId,
    required String categoryId,
    required bool fixedCost,
    required String? description,
    required DateTime? createdAt,
  }) = _DbTransaction;

  factory DbTransaction.fromJson(Map<String, dynamic> json) => _$DbTransactionFromJson(json);
}
