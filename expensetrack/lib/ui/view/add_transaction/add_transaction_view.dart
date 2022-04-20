import 'package:expensetrack/ui/view/add_transaction/add_transaction_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AddTransactionView extends StatelessWidget {
  const AddTransactionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddTransactionViewModel>.reactive(
      viewModelBuilder: () => AddTransactionViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Add Transaction'),
          actions: [
            TextButton(
              child: const Text('Save'),
              onPressed: model.save,
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: model.textControllers.length,
              itemBuilder: (context, index) => Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _TextField(
                    controller: model.dateControllers[index],
                    labelText: 'Date',
                  ),
                  _TextField(
                    controller: model.accountControllers[index],
                    labelText: 'Account',
                  ),
                  _TextField(
                    controller: model.verificationNumberControllers[index],
                    labelText: 'Verification Number',
                  ),
                  _TextField(
                    controller: model.textControllers[index],
                    labelText: 'Text',
                  ),
                  _TextField(
                    controller: model.descriptionControllers[index],
                    labelText: 'Description',
                  ),
                  _TextField(
                    controller: model.amountControllers[index],
                    labelText: 'Amount',
                  ),
                  _TextField(
                    controller: model.categoryIdControllers[index],
                    labelText: 'Category ID',
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: model.addTransaction,
              child: const Text('Add Transaction'),
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
    required this.controller,
    required this.labelText,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
        ),
      ),
    );
  }
}
