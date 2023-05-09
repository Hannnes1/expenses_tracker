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
      'SELECT * FROM transactions WHERE user_id = @userId ORDER BY date DESC LIMIT @limit OFFSET @offset',
      substitutionValues: {
        'userId': userId,
        'limit': limit,
        'offset': offset,
      },
    );

    return results.map((e) => DbTransaction.fromDatabase(e['transactions']!)).toList();
  }

  /// Create a new transaction and return the result.
  Future<DbTransaction> createTransaction(DbTransaction transaction) async {
    final result = await connection.mappedResultsQuery(
      'INSERT INTO transactions'
      '(user_id, date, text, amount, account_id, category_id, fixed_cost, description) VALUES'
      '(@userId, @date, @text, @amount, @accountId, @categoryId, @fixedCost, @description)'
      'RETURNING *',
      substitutionValues: {
        'userId': transaction.userId,
        'date': transaction.date,
        'text': transaction.text,
        'amount': transaction.amount,
        'accountId': transaction.accountId,
        'categoryId': transaction.categoryId,
        'fixedCost': transaction.fixedCost,
        'description': transaction.description,
      },
    );

    return DbTransaction.fromDatabase(result.first['transactions']!);
  }
}
