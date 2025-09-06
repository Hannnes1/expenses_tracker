import 'package:dio/dio.dart';
import 'package:expensetrack/core/services/dio.dart';
import 'package:expensetrack/core/services/error_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'categories_repository.g.dart';

@riverpod
CategoriesRepository categoriesRepository(Ref ref) {
  return CategoriesRepository(ref);
}

class CategoriesRepository {
  CategoriesRepository(this._ref);

  final Ref _ref;

  Dio get _dio => _ref.read(dioProvider);
  ErrorService get _errorService => _ref.read(errorServiceProvider);

  Future<List<Category>> getCategories() async {
    try {
      final response = await _dio.get(
        '/categories'
      );

      return (response.data as List).map((e) => Category.fromJson(e)).toList();
    } on DioException catch (e) {
      throw _errorService.httpHandler(e);
    }
  }
}
