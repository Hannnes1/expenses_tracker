import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';

import '../models/db_transaction.dart';

Middleware transactionRepositoryProvider() {
  return provider<Future<TransactionRepository>>(
    (context) async => TransactionRepository(
      await context.read<Future<PostgreSQLConnection>>(),
    ),
  );
}

class TransactionRepository {
  TransactionRepository(this.connection);

  final PostgreSQLConnection connection;

  /// Get a paginated list of transactions.
  Future<List<DbTransaction>> getTransactions(String userId, int offset, [int limit = 20]) async {
    final results = await connection.mappedResultsQuery(
      'SELECT * FROM transactions WHERE user_id = @userId LIMIT @limit OFFSET @offset',
      substitutionValues: {
        'userId': userId,
        'limit': limit,
        'offset': offset,
      },
    );

    return results.map((e) => DbTransaction.fromDatabase(e['transactions']!)).toList();
  }
}
