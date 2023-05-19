import 'package:expensetrack/core/constants.dart';
import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/core/router.dart';
import 'package:expensetrack/core/widgets/currency_text.dart';
import 'package:expensetrack/core/widgets/shimmer_loading.dart';
import 'package:expensetrack/features/transactions/controllers/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionsPage extends ConsumerWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(routerProvider).go('/create-transaction'),
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(paginatedTransactionsProvider);

          // Await the first page of transactions to be loaded so that the
          // refresh indicator is visible until there is new data.
          await ref.read(paginatedTransactionsProvider(0).future);
        },
        child: ListView.builder(
          itemBuilder: (context, index) {
            final page = index ~/ kTransactionPageLimit;
            final itemIndex = index % kTransactionPageLimit;

            final pageValue = ref.watch(paginatedTransactionsProvider(page));

            return pageValue.when(
              error: (error, stackTrace) {
                if (itemIndex != 0) return null;

                return const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text('The transactions could not be loaded.'),
                  ),
                );
              },
              loading: () {
                if (itemIndex != 0) return null;

                return ShimmerLoading(
                  child: Container(
                    height: 80,
                    width: 100,
                    color: Colors.black,
                  ),
                );
              },
              data: (transactions) {
                if (page == 0 && itemIndex == 0 && transactions.isEmpty) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text('No transactions found.'),
                    ),
                  );
                }

                if (itemIndex >= transactions.length) {
                  return null;
                }

                final transaction = transactions[itemIndex];

                return Column(
                  children: [
                    ListTile(
                      onTap: () => ref.read(routerProvider).go('/transaction/${transaction.id}'),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(transaction.text),
                          CurrencyText(transaction.amount),
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(transaction.category.name),
                          Text(transaction.date.relative(false)),
                        ],
                      ),
                    ),
                    const Divider(),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
