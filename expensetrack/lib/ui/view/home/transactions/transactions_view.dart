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
      builder: (context, model, child) => Column(
        children: [
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: model.transactions.length,
              controller: model.scrollController,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final transaction = model.transactions[index];

                return ListTile(
                  title: Text(transaction.text),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(model.categoriesForTransaction(transaction)),
                      Text(transaction.account),
                    ],
                  ),
                  trailing: Text(transaction.amount.toString()),
                );
              },
            ),
          ),
          if (model.isBusy)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
