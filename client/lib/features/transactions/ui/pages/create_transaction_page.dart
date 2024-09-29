import 'package:expensetrack/core/router.dart';
import 'package:expensetrack/core/widgets/date_picker.dart';
import 'package:expensetrack/core/widgets/provider_error.dart';
import 'package:expensetrack/core/widgets/shimmer_loading.dart';
import 'package:expensetrack/core/widgets/unfocuser.dart';
import 'package:expensetrack/features/statistics/controllers/statistics_overview.dart';
import 'package:expensetrack/features/transactions/controllers/accounts.dart';
import 'package:expensetrack/features/transactions/controllers/categories.dart';
import 'package:expensetrack/features/transactions/controllers/transactions.dart';
import 'package:expensetrack/features/transactions/repositories/transactions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared/shared.dart';

class CreateTransactionPage extends ConsumerStatefulWidget {
  const CreateTransactionPage({
    super.key,
    this.transactionId,
  });

  /// To edit an existing transaction, pass the transaction ID.
  final String? transactionId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreateTransactionPageState();
}

class _CreateTransactionPageState extends ConsumerState<CreateTransactionPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _textController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  bool _isFixedCost = false;
  DateTime? _selectedDate;
  Category? _selectedCategory;
  Account? _selectedAccount;

  @override
  void initState() {
    super.initState();

    if (widget.transactionId != null) {
      _loadTransaction();
    }
  }

  Future<void> _loadTransaction() async {
    final transaction = await ref.read(transactionProvider(widget.transactionId!).future);

    _textController.text = transaction.text;
    _amountController.text = transaction.amount.toString();
    _descriptionController.text = transaction.description ?? '';
    _isFixedCost = transaction.fixedCost;
    _selectedDate = transaction.date;
    _selectedCategory = transaction.category;
    _selectedAccount = transaction.account;

    setState(() {});
  }

  Widget _buildDropdownButton<T>({
    required AutoDisposeFutureProvider<List<T>> provider,
    required String Function(T) selectedItemString,
    required Widget Function(T) itemBuilder,
    required T? value,
    required void Function(T?) onChanged,
    required String? Function(T?) validator,
    required String labelText,
    required String errorText,
  }) {
    return ref.watch(provider).when(
          error: (error, stackTrace) => ProviderError(
            error: error,
            stackTrace: stackTrace,
            errorText: errorText,
          ),
          loading: () => const ShimmerLoading(
            child: LoadingPlaceholder(
              height: 50,
            ),
          ),
          data: (data) => DropdownButtonFormField<T>(
            value: value,
            validator: validator,
            decoration: InputDecoration(
              labelText: labelText,
            ),
            selectedItemBuilder: (context) {
              return data
                  .map(
                    (e) => Text(
                      selectedItemString(e),
                    ),
                  )
                  .toList();
            },
            // The categories and accounts should always be loaded before
            // this page is shown, so we don't need to handle the loading in
            // a fancy way.
            items: data
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: itemBuilder(e),
                  ),
                )
                .toList(),
            onChanged: onChanged,
          ),
        );
  }

  String? _dateValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a date';
    }

    return null;
  }

  String? _textValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a text';
    }

    return null;
  }

  String? _amountValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an amount';
    }
    if (!RegExp(r'^[-+]?[0-9]+(\.[0-9]+)?$').hasMatch(value)) {
      return 'Please enter a valid amount (e.g. 123.45)';
    }

    return null;
  }

  String? _categoryValidator(Category? value) {
    if (value == null) {
      return 'Please select a category';
    }

    return null;
  }

  String? _accountValidator(Account? value) {
    if (value == null) {
      return 'Please select an account';
    }

    return null;
  }

  Future<Transaction?> _save() async {
    if (!_formKey.currentState!.validate()) {
      return null;
    }

    final transaction = CreateTransaction(
      date: _selectedDate!,
      text: _textController.text.trim(),
      amount: double.parse(_amountController.text),
      accountId: _selectedAccount!.id,
      categoryId: _selectedCategory!.id,
      fixedCost: _isFixedCost,
      description: _descriptionController.text.trim(),
    );

    late Transaction created;
    if (widget.transactionId == null) {
      created = await ref.read(transactionsRepositoryProvider).createTransaction(transaction);
    } else {
      created = await ref.read(transactionsRepositoryProvider).updateTransaction(widget.transactionId!, transaction);

      ref.invalidate(transactionProvider(widget.transactionId!));
    }

    ref.invalidate(statisticsOverviewProvider);
    ref.invalidate(paginatedTransactionsProvider);

    return created;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Transaction'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(categoriesProvider);
          ref.invalidate(accountsProvider);

          await ref.read(accountsProvider.future);
          await ref.read(categoriesProvider.future);
        },
        child: Unfocuser(
          child: Form(
            key: _formKey,
            child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  DatePicker(
                    labelText: 'Date',
                    selectedDate: _selectedDate,
                    validator: _dateValidator,
                    onDateSelected: (date) {
                      setState(() {
                        _selectedDate = date;
                      });
                    },
                  ),
                  TextFormField(
                    controller: _textController,
                    validator: _textValidator,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: const InputDecoration(
                      labelText: 'Text',
                    ),
                  ),
                  TextFormField(
                    controller: _amountController,
                    validator: _amountValidator,
                    keyboardType: TextInputType.number,
                    // Allow +, -, numbers and decimal points.
                    // The actual format is validated in [_amountValidator].
                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]|\+|-|\.'))],
                    decoration: const InputDecoration(
                      labelText: 'Amount',
                    ),
                  ),
                  TextFormField(
                    controller: _descriptionController,
                    maxLines: null,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                    ),
                  ),
                  _buildDropdownButton(
                    provider: categoriesProvider,
                    selectedItemString: (e) => e.name,
                    validator: _categoryValidator,
                    value: _selectedCategory,
                    labelText: 'Category',
                    errorText: 'Categories could not be loaded',
                    onChanged: (value) {
                      setState(() {
                        _selectedCategory = value;
                      });
                    },
                    itemBuilder: (e) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.name,
                        ),
                        if (e.description != null)
                          Text(
                            e.description!,
                            style: textTheme.labelSmall,
                          ),
                      ],
                    ),
                  ),
                  _buildDropdownButton(
                    provider: accountsProvider,
                    selectedItemString: (e) => e.name,
                    validator: _accountValidator,
                    value: _selectedAccount,
                    labelText: 'Account',
                    errorText: 'Accounts could not be loaded',
                    onChanged: (value) {
                      setState(() {
                        _selectedAccount = value;
                      });
                    },
                    itemBuilder: (e) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.name,
                        ),
                        if (e.description != null)
                          Text(
                            e.description!,
                            style: textTheme.labelSmall,
                          ),
                      ],
                    ),
                  ),
                  CheckboxListTile(
                    value: _isFixedCost,
                    title: const Text('Fixed cost'),
                    onChanged: (value) {
                      setState(() {
                        _isFixedCost = value!;
                      });
                    },
                  ),
                  FilledButton(
                    onPressed: () async {
                      final transaction = await _save();

                      if (transaction == null) {
                        return;
                      }

                      ref.read(routerProvider).go('/transaction/${transaction.id}');
                    },
                    child: const Text('Save'),
                  ),
                  // Only show this button if a new transaction is being created.
                  if (widget.transactionId == null)
                    FilledButton.tonal(
                      onPressed: () async {
                        final transaction = await _save();

                        if (transaction == null) {
                          return;
                        }

                        ref.read(routerProvider).pushReplacement('/create-transaction');
                      },
                      child: const Text('Save & add another'),
                    ),
                ]
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: e,
                      ),
                    )
                    .toList()),
          ),
        ),
      ),
    );
  }
}
