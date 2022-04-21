import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/models/transaction.dart';
import 'package:expensetrack/services/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:expensetrack/services/transaction_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AddTransactionsViewModel extends BaseViewModel {
  final TransactionService _transactionService = locator<TransactionService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final FilePicker _filePicker = locator<FilePickerService>().platform;

  final _log = getLogger('AddTransactionsViewModel');

  final List<TextEditingController> accountControllers = [];
  final List<TextEditingController> textControllers = [];
  final List<TextEditingController> amountControllers = [];
  final List<TextEditingController> dateControllers = [];
  final List<TextEditingController> verificationNumberControllers = [];
  final List<TextEditingController> descriptionControllers = [];
  final List<TextEditingController> categoryControllers = [];

  /// Add a new transaction to the list of transactions, if index doesn't exist.
  void addIfNotExists(int index) {
    _log.i('');

    if (index >= accountControllers.length) {
      _addTransaction();
    }
    notifyListeners();
  }

  void init() {
    _addTransaction();
  }

  void _addTransaction({
    String? account,
    String? text,
    double? amount,
    DateTime? date,
    String? verificationNumber,
    String? description,
    int? categoryId,
  }) {
    accountControllers.add(TextEditingController(text: account));
    textControllers.add(TextEditingController(text: text));
    amountControllers.add(TextEditingController(text: amount?.toString()));
    dateControllers.add(TextEditingController(text: date == null ? null : DateFormat('yyyy-MM-dd').format(date)));
    verificationNumberControllers.add(TextEditingController(text: verificationNumber));
    descriptionControllers.add(TextEditingController(text: description));
    categoryControllers.add(TextEditingController(text: categoryId?.toString()));
  }

  /// Remove a transaction from the list of transactions.
  void removeTransaction(int index) {
    _log.i('index: $index');

    accountControllers.removeAt(index);
    textControllers.removeAt(index);
    amountControllers.removeAt(index);
    dateControllers.removeAt(index);
    verificationNumberControllers.removeAt(index);
    descriptionControllers.removeAt(index);
    categoryControllers.removeAt(index);

    notifyListeners();
  }

  /// Check if all the fields are empty.
  bool _transactionIsEmpty(int index) {
    _log.i('index: $index');

    return accountControllers[index].text.isEmpty &&
        textControllers[index].text.isEmpty &&
        amountControllers[index].text.isEmpty &&
        dateControllers[index].text.isEmpty &&
        verificationNumberControllers[index].text.isEmpty &&
        descriptionControllers[index].text.isEmpty &&
        categoryControllers[index].text.isEmpty;
  }

  Future<void> save() async {
    _log.i('');

    setBusy(true);

    final transactions = <Transaction>[];

    for (var i = 0; i < accountControllers.length; i++) {
      if (_transactionIsEmpty(i)) {
        continue;
      }

      transactions.add(Transaction(
        account: accountControllers[i].text,
        text: textControllers[i].text,
        // TODO: Handle parsing errors.
        amount: double.parse(amountControllers[i].text),
        date: DateTime.parse(dateControllers[i].text),
        verificationNumber: verificationNumberControllers[i].text,
        description: descriptionControllers[i].text,
        categoryId: int.parse(categoryControllers[i].text),
      ));
    }

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
    final fields = await file.transform(utf8.decoder).transform(const CsvToListConverter(eol: '\n')).toList();

    // Assume the first line is the header.
    // TODO: Don't assume this.
    for (var i = 1; i < fields.length; i++) {
      final transaction = fields[i];

      _addTransaction(
        account: transaction[0].toString(),
        text: transaction[1].toString(),
        amount: double.parse(transaction[2].toString()),
        date: DateTime.parse(transaction[3]),
        verificationNumber: transaction[4].toString(),
        description: transaction[5].toString(),
        categoryId: int.parse(transaction[6].toString()),
      );
    }

    notifyListeners();
  }

  void removeAllTransactions() {
    _log.i('');

    accountControllers.clear();
    textControllers.clear();
    amountControllers.clear();
    dateControllers.clear();
    verificationNumberControllers.clear();
    descriptionControllers.clear();

    notifyListeners();
  }
}
