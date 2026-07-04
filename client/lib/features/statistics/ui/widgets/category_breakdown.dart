import 'package:expensetrack/core/theme/custom_colors.dart';
import 'package:expensetrack/core/widgets/currency_text.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

/// A single category's average, resolved to its display name.
class _CategoryAmount {
  const _CategoryAmount({required this.name, required this.value});

  final String name;
  final num value;
}

/// Shows the average monthly cash flow per category, split into an income
/// and an expenses section, each sorted by magnitude descending with a
/// proportional-width bar for quick visual comparison.
class CategoryBreakdown extends StatelessWidget {
  const CategoryBreakdown({
    super.key,
    required this.categoryAverages,
    required this.categories,
  });

  /// Maps a category id to its average monthly amount.
  final Map<String, num> categoryAverages;

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    final amounts = categoryAverages.entries
        .where((entry) => entry.value != 0)
        .map(
          (entry) => _CategoryAmount(
            name: categories
                .firstWhere((category) => category.id == entry.key)
                .name,
            value: entry.value,
          ),
        )
        .toList();

    final income = amounts.where((amount) => amount.value > 0).toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final expenses = amounts.where((amount) => amount.value < 0).toList()
      ..sort((a, b) => a.value.compareTo(b.value));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (income.isNotEmpty) _CategoryGroup(title: 'Income', amounts: income),
        if (income.isNotEmpty && expenses.isNotEmpty)
          const SizedBox(height: 16),
        if (expenses.isNotEmpty)
          _CategoryGroup(title: 'Expenses', amounts: expenses),
      ],
    );
  }
}

class _CategoryGroup extends StatelessWidget {
  const _CategoryGroup({required this.title, required this.amounts});

  final String title;
  final List<_CategoryAmount> amounts;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final maxAbsValue = amounts
        .map((amount) => amount.value.abs())
        .reduce((a, b) => a > b ? a : b);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: textTheme.titleSmall),
        const SizedBox(height: 8),
        ...amounts.map(
          (amount) => _CategoryRow(
            name: amount.name,
            value: amount.value,
            fraction: amount.value.abs() / maxAbsValue,
          ),
        ),
      ],
    );
  }
}

class _CategoryRow extends StatelessWidget {
  const _CategoryRow({
    required this.name,
    required this.value,
    required this.fraction,
  });

  final String name;
  final num value;
  final double fraction;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final customColors = Theme.of(context).extension<CustomColors>()!;
    final barColor = value.isNegative
        ? customColors.negativeContainer
        : customColors.positiveContainer;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: textTheme.bodyMedium),
              CurrencyText(value, style: textTheme.bodyMedium),
            ],
          ),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LayoutBuilder(
              builder: (context, constraints) => Stack(
                children: [
                  Container(
                      height: 6, color: barColor?.withValues(alpha: 0.25)),
                  Container(
                    height: 6,
                    width: constraints.maxWidth * fraction,
                    color: barColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
