import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/app/app.router.dart';
import 'package:expensetrack/models/transaction.dart';
import 'package:expensetrack/services/transaction_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final TransactionService _transactionService = locator<TransactionService>();
  final NavigationService _navigationService = locator<NavigationService>();

  final _log = getLogger('HomeViewModel');

  List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  Future<void> init() async {
    _log.i('');

    setBusy(true);

    _transactions = (await _transactionService.getTransactions(0, 200)).transactions;

    setBusy(false);
  }

  Future<void> navigateToAddTransactions() async {
    _log.i('');

    await _navigationService.navigateTo(Routes.addTransactionsView);
  }
}
