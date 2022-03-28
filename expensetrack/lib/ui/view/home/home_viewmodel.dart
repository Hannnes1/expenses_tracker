import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/models/transaction.dart';
import 'package:expensetrack/services/transaction_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final TransactionService _transactionService = locator<TransactionService>();

  final _log = getLogger('HomeViewModel');

  List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  Future<void> init() async {
    _log.i('init');

    setBusy(true);

    _transactions = (await _transactionService.getTransaction()).transactions;
    
    setBusy(false);
  }

  Future<GetTransactionsBody> getTransactions() async {
    _log.i('');

    return await _transactionService.getTransaction();
  }
}
