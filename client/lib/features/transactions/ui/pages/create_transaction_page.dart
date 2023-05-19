import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/core/router.dart';
import 'package:expensetrack/core/widgets/provider_error.dart';
import 'package:expensetrack/core/widgets/shimmer_loading.dart';
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
  const CreateTransactionPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreateTransactionPageState();
}

class _CreateTransactionPageState extends ConsumerState<CreateTransactionPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  bool _isFixedCost = false;
  DateTime? _selectedDate;
  Category? _selectedCategory;
  Account? _selectedAccount;

  Future<void> _selectDate(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(4000),
    );

    if (date != null) {
      _dateController.text = date.localDate();
      _selectedDate = date;
    }
  }

  Widget _buildDropdownButton<T>({
    required AutoDisposeFutureProvider<List<T>> provider,
    required String Function(T) selectedItemString,
    required Widget Function(T) itemBuilder,
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

    final created = await ref.read(transactionsRepositoryProvider).createTransaction(
          CreateTransaction(
            date: _selectedDate!,
            text: _textController.text,
            amount: double.parse(_amountController.text),
            accountId: _selectedAccount!.id,
            categoryId: _selectedCategory!.id,
            fixedCost: _isFixedCost,
            description: _descriptionController.text,
          ),
        );

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
        child: Form(
          key: _formKey,
          child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Stack(
                  children: [
                    // I would have liked to place the GestureDetector as a parent
                    // of the TextFormField, but it didn't work. Even with
                    // [IgnorePointer] between the two.
                    TextFormField(
                      controller: _dateController,
                      validator: _dateValidator,
                      decoration: const InputDecoration(
                        labelText: 'Date',
                      ),
                    ),
                    Positioned.fill(
                      child: GestureDetector(
                        onTap: () => _selectDate(context),
                      ),
                    ),
                  ],
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
    );
  }
}
