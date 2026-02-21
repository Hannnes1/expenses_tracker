import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:expensetrack/features/statistics/controllers/statistics_overview.dart';
import 'package:expensetrack/features/transactions/controllers/accounts.dart';
import 'package:expensetrack/features/transactions/controllers/categories.dart';
import 'package:expensetrack/features/transactions/controllers/transactions.dart';
import 'package:expensetrack/features/transactions/models/imported_transaction.dart';
import 'package:expensetrack/features/transactions/repositories/transactions_repository.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:shared/shared.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

class ImportPage extends ConsumerStatefulWidget {
  const ImportPage({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ImportState();
}

class _ImportState extends ConsumerState<ImportPage> {
  List<ImportedTransaction> _importedTransactions = [];

  Future<void> _pickAndParseCsv() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
    );

    if (result != null && result.files.single.path != null) {
      final file = File(result.files.single.path!);
      final content = await file.readAsString(encoding: utf8);
      final rows = csv.decode(content);

      final transactions = <ImportedTransaction>[];
      for (var i = 1; i < rows.length; i++) {
        final row = rows[i];
        final date = DateFormat('yyyy-MM-dd').parse(row[0].toString());
        final text = row[1].toString();
        final amount = double.parse(row[2].toString());
        transactions.add(ImportedTransaction(
          date: date,
          text: text,
          amount: amount,
        ));
      }
      setState(() {
        _importedTransactions = transactions;
      });
    }
  }

  Future<void> _save() async {
    final transactions = <CreateTransaction>[];

    for (final transaction in _importedTransactions) {
      final category = transaction.category;
      final account = transaction.account;

      if (category == null || account == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select category and account for all transactions.')),
        );
        return;
      }

      transactions.add(CreateTransaction(
        date: transaction.date,
        text: transaction.text,
        amount: transaction.amount,
        accountId: account.id,
        categoryId: category.id,
        fixedCost: transaction.isFixedCost,
        description: transaction.description,
      ));
    }

    final futures = <Future>[];
    for (final transaction in transactions) {
      // TODO: Create a batch endpoint in the backend.
      futures.add(ref.read(transactionsRepositoryProvider).createTransaction(transaction));
    }

    await Future.wait(futures);

    ref.invalidate(statisticsOverviewProvider);
    ref.invalidate(paginatedTransactionsProvider);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Transactions imported successfully!')),
      );
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final categories = ref.watch(categoriesProvider);
    final accounts = ref.watch(accountsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Import'),
        actions: [
          TextButton(
            onPressed: _importedTransactions.isEmpty ? null : _save,
            child: const Text('Save'),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(categoriesProvider);
          ref.invalidate(accountsProvider);

          await ref.read(accountsProvider.future);
          await ref.read(categoriesProvider.future);
        },
        child: _importedTransactions.isEmpty
            ? Center(
                child: FilledButton(
                  onPressed: _pickAndParseCsv,
                  child: const Text('Pick CSV File'),
                ),
              )
            : TableView.builder(
                columnCount: 8,
                columnBuilder: (int column) {
                  return TableSpan(
                    extent: switch (column) {
                      0 => const FixedTableSpanExtent(100),
                      1 => const FixedTableSpanExtent(200),
                      2 => const FixedTableSpanExtent(100),
                      3 => const FixedTableSpanExtent(250),
                      4 => const FixedTableSpanExtent(180),
                      5 => const FixedTableSpanExtent(80),
                      6 => const FixedTableSpanExtent(300),
                      7 => const FixedTableSpanExtent(56),
                      _ => throw Exception('Invalid column index'),
                    },
                  );
                },
                // +1 for header row and +3 for some extra space at the bottom.
                rowCount: _importedTransactions.length + 4,
                rowBuilder: (int row) {
                  return TableSpan(
                    extent: FixedTableSpanExtent(56),
                    backgroundDecoration: TableSpanDecoration(
                      color: row.isEven ? Colors.grey[200] : Colors.white,
                    ),
                  );
                },
                cellBuilder: (context, vicinity) {
                  late Widget child;

                  if (vicinity.row == 0) {
                    final columnTitle = switch (vicinity.column) {
                      0 => 'Date',
                      1 => 'Text',
                      2 => 'Amount',
                      3 => 'Category',
                      4 => 'Account',
                      5 => 'Fixed Cost',
                      6 => 'Description',
                      7 => '',
                      _ => throw Exception('Invalid column index'),
                    };

                    child = Text(
                      columnTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  } else if (vicinity.row > _importedTransactions.length) {
                    child = const SizedBox.shrink();
                  } else {
                    final transaction = _importedTransactions[vicinity.row - 1];

                    child = switch (vicinity.column) {
                      0 => Text(DateFormat('yyyy-MM-dd').format(transaction.date)),
                      1 => Text(transaction.text),
                      2 => Text(transaction.amount.toString()),
                      3 => categories.when(
                          data: (data) => DropdownButtonFormField<Category>(
                            initialValue: transaction.category,
                            items: data
                                .map((category) => DropdownMenuItem(
                                      value: category,
                                      child: Text(category.name),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                transaction.category = value;
                              });
                            },
                          ),
                          loading: () => const CircularProgressIndicator(),
                          error: (err, stack) => Text('Error: $err'),
                        ),
                      4 => accounts.when(
                          data: (data) => DropdownButtonFormField<Account>(
                            initialValue: transaction.account,
                            items: data
                                .map((account) => DropdownMenuItem(
                                      value: account,
                                      child: Text(account.name),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                transaction.account = value;
                              });
                            },
                          ),
                          loading: () => const CircularProgressIndicator(),
                          error: (err, stack) => Text('Error: $err'),
                        ),
                      5 => Checkbox(
                          value: transaction.isFixedCost,
                          onChanged: (value) {
                            setState(() {
                              transaction.isFixedCost = value ?? false;
                            });
                          },
                        ),
                      6 => TextFormField(
                          initialValue: transaction.description,
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.sentences,
                          onChanged: (value) {
                            setState(() {
                              transaction.description = value;
                            });
                          },
                        ),
                      7 => IconButton(
                          icon: Icon(
                            Icons.remove_circle_outline,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          onPressed: () {
                            setState(() {
                              _importedTransactions.removeAt(vicinity.row - 1);
                            });
                          },
                        ),
                      _ => throw Exception('Invalid column index'),
                    };
                  }

                  return TableViewCell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: child,
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
