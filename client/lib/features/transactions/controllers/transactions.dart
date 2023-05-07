import 'package:expensetrack/core/constants.dart';
import 'package:expensetrack/features/transactions/repositories/transactions_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'transactions.g.dart';

@riverpod
Future<List<Transaction>> paginatedTransactions(PaginatedTransactionsRef ref, int page) async {
  return await ref.watch(transactionsRepositoryProvider).getTransactions(offset: page * kTransactionPageLimit);
}
