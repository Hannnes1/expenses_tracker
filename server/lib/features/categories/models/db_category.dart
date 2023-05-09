import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_category.freezed.dart';

@freezed
class DbCategory with _$DbCategory {
  factory DbCategory({
    required String id,
    required String name,
    required String? description,
    required DateTime createdAt,
  }) = _DbCategory;

  static DbCategory fromDatabase(Map<String, dynamic> row) {
    return DbCategory(
      id: row['id'],
      name: row['name'],
      description: row['description'],
      createdAt: row['created_at'],
    );
  }
}
