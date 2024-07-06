import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';
import 'package:shared/shared.dart';

import '../../../core/db_helpers.dart';
import '../models/db_transaction.dart';

Middleware transactionRepositoryProvider() {
  return provider<Future<TransactionRepository>>(
    (context) async => TransactionRepository(
      await context.read<Future<Connection>>(),
    ),
  );
}

class TransactionRepository {
  TransactionRepository(this.connection);

  final Connection connection;

  /// Get a paginated list of transactions.
  Future<List<DbTransaction>> getTransactions(
    String userId,
    int offset, {
    int limit = 20,
    TransactionsOrder order = TransactionsOrder.dateDesc,
    DateTime? startDate,
    DateTime? endDate,
    List<String> categories = const [],
  }) async {
    final orderQuery = switch (order) {
      // If the sort order is by date, we also sort by created_at secondarily to ensure
      // a consistent order when multiple transactions have the same date.
      TransactionsOrder.dateDesc => 'date DESC, created_at DESC',
      TransactionsOrder.dateAsc => 'date ASC, created_at ASC',
      TransactionsOrder.amountDesc => 'amount DESC',
      TransactionsOrder.amountAsc => 'amount ASC',
    };

    var dateQuery = '';

    if (startDate != null) {
      dateQuery += ' AND date >= @startDate';
    }

    if (endDate != null) {
      dateQuery += ' AND date <= @endDate';
    }

    var categoriesQuery = '';
    if (categories.isNotEmpty) {
      categoriesQuery += 'AND category_id IN (${repeatParameters('id', categories.length)})';
    }

    final result = await connection.executeNamed(
      'SELECT * FROM transactions '
      'WHERE user_id = @userId $dateQuery $categoriesQuery '
      'ORDER BY $orderQuery LIMIT @limit OFFSET @offset',
      parameters: {
        'userId': userId,
        'limit': limit,
        'offset': offset,
        if (startDate != null) 'startDate': startDate,
        if (endDate != null) 'endDate': endDate,
        if (categories.isNotEmpty) ...repeatparameters('id', categories),
      },
    );

    return result.map((e) => DbTransaction.fromDatabase(e.toColumnMap())).toList();
  }

  /// Get a single transaction.
  Future<DbTransaction> getTransaction(String userId, String transactionId) async {
    final result = await connection.executeNamed(
      'SELECT * FROM transactions WHERE user_id = @userId AND id = @transactionId',
      parameters: {
        'userId': userId,
        'transactionId': transactionId,
      },
    );

    return DbTransaction.fromDatabase(result.first.toColumnMap());
  }

  /// Create a new transaction and return the result.
  Future<DbTransaction> createTransaction(DbTransaction transaction) async {
    final result = await connection.executeNamed(
      'INSERT INTO transactions'
      '(user_id, date, text, amount, account_id, category_id, fixed_cost, description) VALUES'
      '(@userId, @date, @text, @amount, @accountId, @categoryId, @fixedCost, @description)'
      'RETURNING *',
      parameters: {
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

    return DbTransaction.fromDatabase(result.first.toColumnMap());
  }

  Future<DbTransaction> updateTransaction(DbTransaction transaction) async {
    final result = await connection.executeNamed(
      'UPDATE transactions SET '
      'date = @date, '
      'text = @text, '
      'amount = @amount, '
      'account_id = @accountId, '
      'category_id = @categoryId, '
      'fixed_cost = @fixedCost, '
      'description = @description '
      'WHERE id = @id AND user_id = @userId '
      'RETURNING *',
      parameters: {
        'id': transaction.id,
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

    return DbTransaction.fromDatabase(result.first.toColumnMap());
  }

  Future<void> deleteTransaction(String userId, String transactionId) async {
    await connection.executeNamed(
      'DELETE FROM transactions WHERE user_id = @userId AND id = @transactionId',
      parameters: {
        'userId': userId,
        'transactionId': transactionId,
      },
    );
  }
}
