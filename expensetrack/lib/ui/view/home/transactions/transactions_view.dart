import 'package:expensetrack/ui/view/home/transactions/transactions_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TransactionsViewModel>.reactive(
      viewModelBuilder: () => TransactionsViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: model.transactions.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(model.transactions[index].text),
            subtitle: Text(model.transactions[index].categoryId.toString()),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: model.navigateToAddTransactionView,
        ),
      ),
    );
  }
}
