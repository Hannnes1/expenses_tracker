import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/models/category.dart';
import 'package:expensetrack/services/category_service.dart';
import 'package:stacked/stacked.dart';

class CategoriesViewModel extends BaseViewModel {
  final CategoryService _categoryService = locator<CategoryService>();

  final _log = getLogger('CategoriesViewModel');

  int _offset = 0;

  List<Category> categories = [];

  void init() async {
    await loadCategories();
  }

  Future<void> loadCategories() async {
    _log.i('');
    setBusy(true);

    categories = await _categoryService.getCategories();

    setBusy(false);
  }
}
