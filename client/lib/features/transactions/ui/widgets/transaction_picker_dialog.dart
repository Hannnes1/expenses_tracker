import 'dart:async';

import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/core/widgets/currency_text.dart';
import 'package:expensetrack/features/transactions/repositories/transactions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared/shared.dart';

/// A dialog that lets the user search for and select an existing transaction.
///
/// Pops with the selected [Transaction], or null if dismissed.
class TransactionPickerDialog extends ConsumerStatefulWidget {
  const TransactionPickerDialog({
    super.key,
    this.excludeId,
  });

  /// A transaction id to leave out of the results, e.g. to prevent linking a
  /// transaction to itself.
  final String? excludeId;

  @override
  ConsumerState<TransactionPickerDialog> createState() =>
      _TransactionPickerDialogState();
}

class _TransactionPickerDialogState
    extends ConsumerState<TransactionPickerDialog> {
  Timer? _debounce;
  List<Transaction>? _results;
  bool _loading = true;

  @override
  void initState() {
    super.initState();

    _search('');
  }

  @override
  void dispose() {
    _debounce?.cancel();

    super.dispose();
  }

  Future<void> _search(String query) async {
    setState(() {
      _loading = true;
    });

    final results =
        await ref.read(transactionsRepositoryProvider).getTransactions(
              offset: 0,
              limit: 20,
              search: query,
            );

    if (!mounted) {
      return;
    }

    setState(() {
      _results = results
          .where((transaction) => transaction.id != widget.excludeId)
          .toList();
      _loading = false;
    });
  }

  void _onQueryChanged(String query) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () => _search(query));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Transaction'),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: _onQueryChanged,
            ),
            const SizedBox(height: 8),
            Flexible(
              child: _loading
                  ? const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(child: CircularProgressIndicator()),
                    )
                  : (_results?.isEmpty ?? true)
                      ? const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text('No transactions found'),
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          itemCount: _results!.length,
                          itemBuilder: (context, index) {
                            final transaction = _results![index];

                            return ListTile(
                              title: Text(transaction.text),
                              subtitle: Text(transaction.date.localDate()),
                              trailing: CurrencyText(transaction.amount),
                              onTap: () =>
                                  GoRouter.of(context).pop(transaction),
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => GoRouter.of(context).pop(),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
