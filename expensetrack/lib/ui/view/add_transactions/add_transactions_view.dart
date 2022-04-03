import 'package:expensetrack/ui/view/add_transactions/add_transactions_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AddTransactionsView extends StatelessWidget {
  const AddTransactionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ViewModelBuilder<AddTransactionsViewModel>.reactive(
      viewModelBuilder: () => AddTransactionsViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Save'),
          icon: const Icon(Icons.save),
          onPressed: model.save,
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: model.accountControllers.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 8,
                      runSpacing: 4,
                      children: [
                        _TextField(
                          labelText: 'Account',
                          onChanged: (value) => model.addIfNotExists(index),
                          controller: model.accountControllers[index],
                        ),
                        _TextField(
                          labelText: 'Text',
                          onChanged: (value) => model.addIfNotExists(index),
                          controller: model.textControllers[index],
                        ),
                        _TextField(
                          labelText: 'Amount',
                          onChanged: (value) => model.addIfNotExists(index),
                          controller: model.amountControllers[index],
                        ),
                        _TextField(
                          labelText: 'Date',
                          onChanged: (value) => model.addIfNotExists(index),
                          controller: model.dateControllers[index],
                        ),
                        _TextField(
                          labelText: 'Verification Number',
                          onChanged: (value) => model.addIfNotExists(index),
                          controller: model.verificationNumberControllers[index],
                        ),
                        _TextField(
                          labelText: 'Description',
                          onChanged: (value) => model.addIfNotExists(index),
                          controller: model.descriptionControllers[index],
                        ),
                        _TextField(
                          labelText: 'Category',
                          onChanged: (value) => model.addIfNotExists(index),
                          controller: model.categoriesControllers[index],
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => model.removeTransaction(index),
                    icon: Icon(
                      Icons.delete,
                      color: theme.colorScheme.error,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                ElevatedButton(
                  child: const Text('Import transactions from CSV'),
                  onPressed: model.addFromFile,
                ),
                const SizedBox(
                  width: 4,
                ),
                TextButton(
                  child: const Text('Remove all transactions'),
                  style: TextButton.styleFrom(
                    primary: theme.colorScheme.error,
                  ),
                  onPressed: model.removeAllTransactions,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  const _TextField({
    Key? key,
    this.labelText,
    this.onChanged,
    this.controller,
  }) : super(key: key);

  final String? labelText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 300),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          border: const OutlineInputBorder(),
        ),
        onChanged: onChanged,
        controller: controller,
      ),
    );
  }
}
