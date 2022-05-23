import 'package:expensetrack/ui/view/home/transactions/transactions_viewmodel.dart';
import 'package:expensetrack/ui/view/widgets/expandable_list.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TransactionsViewModel>.reactive(
      viewModelBuilder: () => TransactionsViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => ExpandableList(
        itemCount: model.transactions.length,
        loading: model.isBusy,
        onLoad: model.loadMore,
        itemBuilder: (context, index) {
          final transaction = model.transactions[index];

          return ListTile(
            title: Text(transaction.text),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.categoryForTransaction(transaction)),
                Text(transaction.account),
              ],
            ),
            trailing: Text(transaction.amount.toString()),
          );
        },
      ),
    );
  }
}
