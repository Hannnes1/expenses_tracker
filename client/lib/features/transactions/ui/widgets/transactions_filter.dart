import 'package:expensetrack/core/widgets/date_picker.dart';
import 'package:expensetrack/features/transactions/controllers/categories.dart';
import 'package:expensetrack/features/transactions/controllers/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared/shared.dart';

/// A filter for transactions.
///
/// The filter can be opened in a bottom modal using [TransactionsFilter.show].
class TransactionsFilter extends ConsumerStatefulWidget {
  const TransactionsFilter({super.key});

  /// Shows the filter in a bottom modal.
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const TransactionsFilter();
      },
    );
  }

  @override
  ConsumerState<TransactionsFilter> createState() => _TransactionsFilterState();
}

class _TransactionsFilterState extends ConsumerState<TransactionsFilter> {
  late TransactionsFilterState _filter;

  @override
  void initState() {
    super.initState();

    _filter = ref.read(transactionsFilterControllerProvider);
  }

  void _updateOrder(TransactionsOrder order) {
    setState(() {
      _filter = _filter.copyWith(order: order);
    });
  }

  void _updateStartDate(DateTime? date) {
    setState(() {
      _filter = _filter.copyWith(startDate: date);
    });
  }

  void _updateEndDate(DateTime? date) {
    setState(() {
      _filter = _filter.copyWith(endDate: date);
    });
  }

  void _onCategorySelected(Category category) {
    setState(() {
      final categories = List<Category>.from(_filter.categories);

      if (categories.contains(category)) {
        categories.remove(category);
      } else {
        categories.add(category);
      }

      _filter = _filter.copyWith(categories: categories);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        24,
        32,
        24,
        32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DropdownMenu<TransactionsOrder>(
            label: const Text('Order'),
            expandedInsets: EdgeInsets.zero,
            initialSelection: _filter.order,
            onSelected: (order) => _updateOrder(order!),
            dropdownMenuEntries: TransactionsOrder.values
                .map((order) => DropdownMenuEntry(
                      value: order,
                      label: order.label,
                    ))
                .toList(),
          ),
          const SizedBox(
            height: 16,
          ),
          DatePicker(
            labelText: 'From Date',
            selectedDate: _filter.startDate,
            onDateSelected: _updateStartDate,
          ),
          const SizedBox(
            height: 16,
          ),
          DatePicker(
            labelText: 'To Date',
            selectedDate: _filter.endDate,
            onDateSelected: _updateEndDate,
          ),
          const SizedBox(
            height: 16,
          ),
          _Categories(
            selectedCategories: _filter.categories,
            onCategorySelected: _onCategorySelected,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  ref.read(transactionsFilterControllerProvider.notifier).reset();
                  Navigator.of(context).pop();
                },
                child: const Text('Reset'),
              ),
              const SizedBox(
                width: 16,
              ),
              FilledButton(
                onPressed: () {
                  ref.read(transactionsFilterControllerProvider.notifier).update(_filter);
                  Navigator.of(context).pop();
                },
                child: const Text('Apply'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Categories extends ConsumerStatefulWidget {
  const _Categories({
    required this.selectedCategories,
    required this.onCategorySelected,
  });

  final List<Category> selectedCategories;
  final Function(Category) onCategorySelected;

  @override
  ConsumerState<_Categories> createState() => _CategoriesState();
}

class _CategoriesState extends ConsumerState<_Categories> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: widget.selectedCategories.map((e) => e.name).join(', '));
  }

  @override
  void didUpdateWidget(covariant _Categories oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.selectedCategories != oldWidget.selectedCategories) {
      Future(() => _controller.text = widget.selectedCategories.map((e) => e.name).join(', '));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return switch (ref.watch(categoriesProvider)) {
      AsyncData(:final value) => LayoutBuilder(
          builder: (context, constraints) {
            final menuWidth = constraints.maxWidth;

            return MenuAnchor(
              consumeOutsideTap: true,
              crossAxisUnconstrained: false,
              builder: (context, controller, child) {
                return GestureDetector(
                  onTap: () {
                    if (controller.isOpen) {
                      controller.close();
                    } else {
                      controller.open();
                    }
                  },
                  behavior: HitTestBehavior.opaque,
                  child: IgnorePointer(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: 'Categories',
                        suffixIcon: Icon(controller.isOpen ? Icons.arrow_drop_down : Icons.arrow_drop_down),
                      ),
                    ),
                  ),
                );
              },
              menuChildren: value
                  .map(
                    (category) => SizedBox(
                      width: menuWidth,
                      child: MenuItemButton(
                        closeOnActivate: false,
                        onPressed: () => widget.onCategorySelected(category),
                        leadingIcon: IgnorePointer(
                          child: Checkbox(
                            value: widget.selectedCategories.contains(category),
                            onChanged: (_) {},
                          ),
                        ),
                        child: Text(category.name),
                      ),
                    ),
                  )
                  .toList(),
            );
          },
        ),
      _ => const SizedBox(),
    };
  }
}
