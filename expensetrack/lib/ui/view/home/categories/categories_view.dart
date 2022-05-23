import 'package:expensetrack/ui/view/home/categories/categories_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoriesViewModel>.reactive(
      viewModelBuilder: () => CategoriesViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => ListView.separated(
        itemCount: model.categories.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final category = model.categories[index];

          return ListTile(
            title: Text(category.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(category.description ?? ''),
                Text(category.internal ? 'Internal' : ''),
              ],
            ),
          );
        },
      ),
    );
  }
}
