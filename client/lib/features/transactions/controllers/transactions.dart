import 'package:expensetrack/core/constants.dart';
import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/features/transactions/repositories/transactions_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'transactions.g.dart';

@riverpod
Future<List<Transaction>> paginatedTransactions(PaginatedTransactionsRef ref, int page) async {
  return await ref.watch(transactionsRepositoryProvider).getTransactions(offset: page * kTransactionPageLimit);
}

@riverpod
Future<Transaction> transaction(TransactionRef ref, String id) async {
  ref.cacheFor(kDefaultCacheDuration);

  return await ref.watch(transactionsRepositoryProvider).getTransaction(id);
}
