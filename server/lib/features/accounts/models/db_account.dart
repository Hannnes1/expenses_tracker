import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_account.freezed.dart';

@freezed
class DbAccount with _$DbAccount {
  factory DbAccount({
    required String id,
    required String userId,
    required String name,
    required String? description,
    required DateTime createdAt,
  }) = _DbAccount;

  static DbAccount fromDatabase(Map<String, dynamic> row) {
    return DbAccount(
      id: row['id'],
      userId: row['user_id'],
      name: row['name'],
      description: row['description'],
      createdAt: row['created_at'],
    );
  }
}
