import 'package:expensetrack/core/constants.dart';
import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/features/transactions/repositories/transactions_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'transactions.freezed.dart';
part 'transactions.g.dart';

@riverpod
Future<List<Transaction>> paginatedTransactions(Ref ref, int page) async {
  // Caching is required here to prevent loading when scrolling up.
  ref.cacheFor(kDefaultCacheDuration);

  final filter = ref.watch(transactionsFilterControllerProvider);

  return await ref.watch(transactionsRepositoryProvider).getTransactions(
        offset: page * kTransactionPageLimit,
        order: filter.order,
        startDate: filter.startDate,
        endDate: filter.endDate,
        categories: filter.categories.map((e) => e.id).toList(),
      );
}

@riverpod
Future<Transaction> transaction(Ref ref, String id) async {
  ref.cacheFor(kDefaultCacheDuration);

  return await ref.watch(transactionsRepositoryProvider).getTransaction(id);
}

@freezed
sealed class TransactionsFilterState with _$TransactionsFilterState {
  const factory TransactionsFilterState({
    required TransactionsOrder order,
    required DateTime? startDate,
    required DateTime? endDate,
    required List<Category> categories,
  }) = _TransactionsFilterState;
}

@riverpod
class TransactionsFilterController extends _$TransactionsFilterController {
  @override
  TransactionsFilterState build() {
    return const TransactionsFilterState(
      order: TransactionsOrder.dateDesc,
      startDate: null,
      endDate: null,
      categories: [],
    );
  }

  void update(TransactionsFilterState filter) {
    state = filter;

    ref.invalidate(paginatedTransactionsProvider);
  }

  void reset() {
    state = const TransactionsFilterState(
      order: TransactionsOrder.dateDesc,
      startDate: null,
      endDate: null,
      categories: [],
    );

    ref.invalidate(paginatedTransactionsProvider);
  }
}
