import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/models/transaction.dart';
import 'package:expensetrack/services/transaction_service.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class TransactionsViewModel extends BaseViewModel {
  final TransactionService _transactionService = locator<TransactionService>();

  final _log = getLogger('TransactionsViewModel');

  List<Transaction> get transactions => _transactions;

  final List<Transaction> _transactions = [];

  int _offset = 0;

  /// The total number of transactions that exist in the database.
  int? _totalCount;

  final ScrollController scrollController = ScrollController();

  void init() async {
    _log.i('');

    await loadMore();

    while (!isBusy && scrollController.position.pixels + 100 >= scrollController.position.maxScrollExtent ) {
      loadMore();
    }

    scrollController.addListener(() {
      if (scrollController.position.pixels + 100 >= scrollController.position.maxScrollExtent) {
        loadMore();
      }
    });

    notifyListeners();
  }

  Future<void> loadMore() async {
    _log.i('');

    // Don't attempt to load more if we're already loading, or no more transactions exist.
    if (isBusy || _totalCount != null && _offset >= _totalCount!) {
      return;
    }

    setBusy(true);

    final response = await _transactionService.getTransactions(_offset);
    _offset += response.transactions.length;
    _totalCount = response.totalCount;
    _transactions.addAll(response.transactions);

    setBusy(false);
  }
}
