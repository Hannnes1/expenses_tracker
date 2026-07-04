import 'package:shared/shared.dart';

class ImportedTransaction {
  final DateTime date;
  final String text;
  final double amount;
  String description;
  Category? category;
  Account? account;
  bool isFixedCost;

  /// The existing transaction that this imported row is a reimbursement/refund for, if any.
  Transaction? linkedTransaction;

  ImportedTransaction({
    required this.date,
    required this.text,
    required this.amount,
    this.description = '',
    this.category,
    this.account,
    this.isFixedCost = false,
    this.linkedTransaction,
  });
}
