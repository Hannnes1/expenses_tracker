import 'package:expensetrack/core/constants.dart';
import 'package:expensetrack/core/extensions.dart';
import 'package:expensetrack/features/transactions/repositories/categories_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'categories.g.dart';

@riverpod
Future<List<Category>> categories(Ref ref) async {
  ref.cacheFor(kDefaultCacheDuration);

  final categories = await ref.watch(categoriesRepositoryProvider).getCategories();

  categories.sort((a, b) => a.name.compareTo(b.name));

  return categories;
}
