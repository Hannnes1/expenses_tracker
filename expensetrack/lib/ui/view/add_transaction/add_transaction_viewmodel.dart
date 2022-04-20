import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/app/extentions.dart';
import 'package:expensetrack/models/transaction.dart';
import 'package:expensetrack/services/transaction_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class AddTransactionViewModel extends BaseViewModel {
  final List<TextEditingController> dateControllers = [];
  final List<TextEditingController> accountControllers = [];
  final List<TextEditingController> verificationNumberControllers = [];
  final List<TextEditingController> textControllers = [];
  final List<TextEditingController> descriptionControllers = [];
  final List<TextEditingController> amountControllers = [];
  final List<TextEditingController> categoryIdControllers = [];

  final _log = getLogger('AddTransactionViewModel');

  final TransactionService _transactionService = locator<TransactionService>();

  void init() {
    _log.i('');

    addTransaction();
  }

  void addTransaction() {
    _log.i('');

    dateControllers.add(TextEditingController());
    accountControllers.add(TextEditingController());
    verificationNumberControllers.add(TextEditingController());
    textControllers.add(TextEditingController());
    descriptionControllers.add(TextEditingController());
    amountControllers.add(TextEditingController());
    categoryIdControllers.add(TextEditingController());

    notifyListeners();
  }

  Future<void> save() async {
    _log.i('');

    final transactions = textControllers
        .mapWithIndex(
          (i, e) => Transaction(
            date: dateControllers[i].text,
            account: accountControllers[i].text,
            verificationNumber: verificationNumberControllers[i].text,
            text: textControllers[i].text,
            description: descriptionControllers[i].text,
            amount: int.parse(amountControllers[i].text),
            categoryId: int.parse(categoryIdControllers[i].text),
          ),
        )
        .toList();

    try {
      await _transactionService.addTransactions(transactions);
    } catch (e) {
      _log.e(e);
    }
  }
}
