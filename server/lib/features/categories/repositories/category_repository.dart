import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';

import '../../../core/db_helpers.dart';
import '../models/db_category.dart';

Middleware categoryRepositoryProvider() {
  return provider<Future<CategoryRepository>>(
    (context) async => CategoryRepository(
      await context.read<Future<Connection>>(),
    ),
  );
}

class CategoryRepository {
  CategoryRepository(this.connection);

  final Connection connection;

  /// Get a list of categorys by their IDs.
  Future<List<DbCategory>> getCategoriesByIds(Set<String> ids) async {
    if (ids.isEmpty) {
      return [];
    }

    final results = await connection.executeNamed(
      'SELECT * FROM categories WHERE id IN (${repeatParameters('id', ids.length)})',
      parameters: repeatparameters('id', ids),
    );

    return results.map((e) => DbCategory.fromDatabase(e.toColumnMap())).toList();
  }

  Future<List<DbCategory>> getCategories(String userId) async {
    final results = await connection.executeNamed('SELECT * FROM categories');

    return results.map((e) => DbCategory.fromDatabase(e.toColumnMap())).toList();
  }
}
