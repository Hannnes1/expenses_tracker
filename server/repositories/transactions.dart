import 'package:server/models/database/db_transaction.dart';
import '../lib/utils/db_connection.dart';

class TransactionRepository {
  /// Get a paginated list of transactions.
  Future<List<DbTransaction>> getTransactions(int offset, [int limit = 20]) async {

    final results = await connection.mappedResultsQuery(
      'SELECT * FROM transactions LIMIT $limit OFFSET $offset',
    );

    return results.map((e) => DbTransaction.fromJson(e['transactions']!)).toList();
  }
}
