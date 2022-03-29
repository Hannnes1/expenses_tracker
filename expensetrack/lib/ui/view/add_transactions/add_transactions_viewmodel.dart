import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/models/transaction.dart';
import 'package:expensetrack/services/file_picker.dart';
import 'package:expensetrack/services/transaction_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AddTransactionsViewModel extends BaseViewModel {
  final TransactionService _transactionService = locator<TransactionService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final FilePicker _filePicker = locator<FilePickerService>().platform;

  final _log = getLogger('AddTransactionsViewModel');

  final List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  /// Add a new transaction to the list of transactions, if index doesn't exist.
  _addIfNotExists(int index) {
    if (index >= _transactions.length) {
      _transactions.add(
        Transaction(
          account: '',
          amount: 0,
          date: '',
          description: '',
          text: '',
          verificationNumber: '',
        ),
      );
    }
    notifyListeners();
  }

  void updateText(int index, String value) {
    _log.i('index: $index | value: $value');

    _addIfNotExists(index);

    _transactions[index] = _transactions[index].copyWith(text: value);
  }

  void removeTransaction(int index) {
    _log.i('index: $index');

    _transactions.removeAt(index);
    notifyListeners();
  }

  void updateDate(int index, String value) {
    _log.i('index: $index | value: $value');

    _addIfNotExists(index);

    _transactions[index] = _transactions[index].copyWith(date: value);
  }

  void updateAccount(int index, String value) {
    _log.i('index: $index | value: $value');

    _addIfNotExists(index);

    _transactions[index] = _transactions[index].copyWith(account: value);
  }

  void updateVerificationNumber(int index, String value) {
    _log.i('index: $index | value: $value');

    _addIfNotExists(index);

    _transactions[index] = _transactions[index].copyWith(verificationNumber: value);
  }

  void updateDescription(int index, String value) {
    _log.i('index: $index | value: $value');

    _addIfNotExists(index);

    _transactions[index] = _transactions[index].copyWith(description: value);
  }

  Future<void> save() async {
    _log.i('');

    setBusy(true);

    await _transactionService.addTransactions(transactions);

    setBusy(false);

    _navigationService.back();
  }

  Future<void> addFromFile() async {
    _log.i('');

    final pickResult = await _filePicker.pickFiles(type: FileType.custom, allowedExtensions: ['csv']);

    if (pickResult?.files.first.path == null) {
      // TODO: Show error
      return;
    }

    final file = File(pickResult!.files.first.path!).openRead();
    final fields = await file.transform(utf8.decoder).transform(const CsvToListConverter()).toList();

    // Assume the first line is the header.
    // TODO: Don't assume this.
    for (var i = 1; i < fields.length; i++) {
      final transaction = fields[i];

      transactions.add(
        // TODO: Columns should be assignable.
        Transaction(
          account: transaction[0],
          text: transaction[1],
          // Ensure that amount is a double.
          amount: double.parse(transaction[2].toString()),
          date: transaction[3],
          verificationNumber: transaction[4],
          description: transaction[5],
        ),
      );
    }

    notifyListeners();
  }

  void removeAllTransactions() {
    _log.i('');

    _transactions.clear();

    notifyListeners();
  }

  void updateAmount(int index, String value) {
    _log.i('');

    _addIfNotExists(index);

    _transactions[index] = _transactions[index].copyWith(amount: double.parse(value));
  }
}
