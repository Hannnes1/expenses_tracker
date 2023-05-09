import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';

import '../../../core/db_helpers.dart';
import '../models/db_category.dart';

Middleware categoryRepositoryProvider() {
  return provider<Future<CategoryRepository>>(
    (context) async => CategoryRepository(
      await context.read<Future<PostgreSQLConnection>>(),
    ),
  );
}

class CategoryRepository {
  CategoryRepository(this.connection);

  final PostgreSQLConnection connection;

  /// Get a list of categorys by their IDs.
  Future<List<DbCategory>> getCategoriesByIds(Set<String> ids) async {
    final results = await connection.mappedResultsQuery(
      'SELECT * FROM categories WHERE id IN (${repeatParameters('id', ids.length)})',
      substitutionValues: repeatSubstitutionValues('id', ids),
    );

    return results.map((e) => DbCategory.fromDatabase(e['categories']!)).toList();
  }
}
