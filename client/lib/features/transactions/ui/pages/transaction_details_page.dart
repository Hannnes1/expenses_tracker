import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/core/router.dart';
import 'package:expensetrack/core/widgets/card_with_title.dart';
import 'package:expensetrack/core/widgets/confirmation_dialog.dart';
import 'package:expensetrack/core/widgets/currency_text.dart';
import 'package:expensetrack/core/widgets/overflow_menu.dart';
import 'package:expensetrack/core/widgets/provider_error.dart';
import 'package:expensetrack/core/widgets/shimmer_loading.dart';
import 'package:expensetrack/features/statistics/controllers/statistics_overview.dart';
import 'package:expensetrack/features/transactions/controllers/transactions.dart';
import 'package:expensetrack/features/transactions/repositories/transactions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';

class TransactionDetailsPage extends ConsumerWidget {
  const TransactionDetailsPage({
    super.key,
    required this.transactionId,
  });

  final String transactionId;

  Future<void> _deleteTransaction(BuildContext context, WidgetRef ref) async {
    final confirmation = await showDialog<bool>(
      context: context,
      builder: (context) => const ConfirmationDialog(
        title: 'Remove Transaction?',
        content: 'Are you sure you want to delete this transaction?',
        confirmText: 'Delete',
        denyText: 'Cancel',
      ),
    );

    if (confirmation ?? false) {
      await ref.read(transactionsRepositoryProvider).deleteTransaction(transactionId);

      ref.invalidate(paginatedTransactionsProvider);
      ref.invalidate(statisticsOverviewProvider);

      ref.read(routerProvider).pop();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    Widget buildAppBar(Widget? title) {
      return SliverAppBar.medium(
        // Temporary workaround for text covering automatically implied
        // leading icon button.
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
        title: title,
        actions: [
          OverflowMenu(
            items: [
              OverflowMenuItem(
                icon: Icons.edit,
                title: 'Edit',
                onPressed: () => ref.read(routerProvider).go('/transaction/$transactionId/edit'),
              ),
              OverflowMenuItem(
                icon: Icons.delete,
                title: 'Delete',
                onPressed: () => _deleteTransaction(context, ref),
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      body: RefreshIndicator(
        edgeOffset: kToolbarHeight + MediaQuery.of(context).padding.top,
        onRefresh: () async => await ref.refresh(transactionProvider(transactionId).future),
        child: CustomScrollView(
          slivers: ref.watch(transactionProvider(transactionId)).when(
                error: (error, stackTrace) => [
                  buildAppBar(
                    const Text('Transaction Details'),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: ProviderError(
                      error: error,
                      stackTrace: stackTrace,
                      errorText: 'The transaction could not be loaded.',
                    ),
                  ),
                ],
                loading: () => [
                  buildAppBar(
                    const ShimmerLoading(
                      child: LoadingPlaceholder(
                        height: 40,
                        width: 250,
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: ShimmerLoading(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LoadingPlaceholder(
                              height: 40,
                              width: 200,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            LoadingPlaceholder(
                              height: 20,
                              width: 100,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            LoadingPlaceholder(
                              height: 200,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            LoadingPlaceholder(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
                data: (transaction) => [
                  buildAppBar(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(transaction.text),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CurrencyText(
                            transaction.amount,
                            style: textTheme.headlineMedium,
                          ),
                          Text(
                            transaction.date.localDate(),
                            // [ListTile] uses the bodyMedium style, but the bodySmall
                            // color for some reason. This matches that.
                            style: textTheme.bodyMedium!.copyWith(
                              color: textTheme.bodySmall!.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(16.0),
                    sliver: MultiSliver(
                      children: [
                        CardWithTitle(
                          title: 'Details',
                          child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: 3,
                            separatorBuilder: (context, index) => Divider(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                            itemBuilder: (context, index) {
                              final detail = {
                                'Category': transaction.category.name,
                                'Account': transaction.account.name,
                                'Fixed Cost': transaction.fixedCost ? 'Yes' : 'No',
                              }.entries.elementAt(index);

                              return Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(detail.key),
                                  Text(detail.value),
                                ],
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        if (transaction.description?.isNotEmpty ?? false)
                          CardWithTitle(
                            title: 'Description',
                            child: Text(transaction.description!),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
