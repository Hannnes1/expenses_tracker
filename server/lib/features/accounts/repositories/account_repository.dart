import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';

import '../../../core/db_helpers.dart';
import '../models/db_account.dart';

Middleware accountRepositoryProvider() {
  return provider<Future<AccountRepository>>(
    (context) async => AccountRepository(
      await context.read<Future<PostgreSQLConnection>>(),
    ),
  );
}

class AccountRepository {
  AccountRepository(this.connection);

  final PostgreSQLConnection connection;

  /// Get a list of accounts by their IDs.
  Future<List<DbAccount>> getAccountsByIds(Set<String> ids) async {
    if (ids.isEmpty) {
      return [];
    }

    final results = await connection.mappedResultsQuery(
      'SELECT * FROM accounts WHERE id IN (${repeatParameters('id', ids.length)})',
      substitutionValues: repeatSubstitutionValues('id', ids),
    );

    return results.map((e) => DbAccount.fromDatabase(e['accounts']!)).toList();
  }
}
