import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/models/category.dart';
import 'package:expensetrack/models/transaction.dart';
import 'package:expensetrack/services/category_service.dart';
import 'package:expensetrack/services/transaction_service.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class TransactionsViewModel extends BaseViewModel {
  final TransactionService _transactionService = locator<TransactionService>();
  final CategoryService _categoryService = locator<CategoryService>();

  final _log = getLogger('TransactionsViewModel');

  List<Transaction> get transactions => _transactions;

  final List<Transaction> _transactions = [];

  int _offset = 0;

  /// The total number of transactions that exist in the database.
  int? _totalCount;

  List<Category> _categories = [];

  bool _loadingTransactions = false;

  void init() async {
    _log.i('');

    await _loadCategories();

    notifyListeners();
  }

  Future<void> _loadCategories() async {
    _log.i('');

    setBusy(true);

    _categories = await _categoryService.getCategories();

    setBusy(false);
  }

  Future<void> loadMore() async {
    _log.i('');

    // Don't attempt to load more if we're already loading, or no more transactions exist.
    if (_loadingTransactions || _totalCount != null && _offset >= _totalCount!) {
      return;
    }

    _loadingTransactions = true;
    setBusy(true);

    final response = await _transactionService.getTransactions(_offset, 20);
    _offset += response.transactions.length;
    _totalCount = response.totalCount;
    _transactions.addAll(response.transactions);

    _loadingTransactions = false;
    setBusy(false);
  }

  String categoryForTransaction(Transaction transaction) {
    try {
      return _categories.firstWhere((e) => transaction.categoryId == e.id).name;
    } catch (e) {
      return 'Uncategorized';
    }
  }
}
