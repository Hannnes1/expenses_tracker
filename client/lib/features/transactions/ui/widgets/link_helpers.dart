import 'package:expensetrack/core/widgets/confirmation_dialog.dart';
import 'package:flutter/material.dart';

/// Reimbursements/refunds are typically the opposite sign of the transaction
/// they refund. If the two amounts have the same sign, ask the user to
/// confirm before linking. Returns true if the link should proceed.
Future<bool> confirmSameSignLink(
  BuildContext context, {
  required num amount,
  required num linkedAmount,
}) async {
  if (amount == 0 || linkedAmount == 0 || amount.sign != linkedAmount.sign) {
    return true;
  }

  final confirmation = await showDialog<bool>(
    context: context,
    builder: (context) => const ConfirmationDialog(
      title: 'Link Same-Sign Transactions?',
      content:
          'Reimbursements are usually the opposite sign of the transaction they refund, '
          'but these two transactions have the same sign. Link them anyway?',
      confirmText: 'Link Anyway',
      denyText: 'Cancel',
    ),
  );

  return confirmation ?? false;
}
