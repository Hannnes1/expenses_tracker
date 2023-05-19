import 'package:expensetrack/features/transactions/repositories/categories_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'categories.g.dart';

@riverpod
Future<List<Category>> categories(CategoriesRef ref) async {
  return await ref.watch(categoriesRepositoryProvider).getCategories();
}
