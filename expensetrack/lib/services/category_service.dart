import 'package:dio/dio.dart';
import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/app/env_vars.dart';
import 'package:expensetrack/models/category.dart';

class CategoryService {
  final Dio _dio = locator<Dio>()..options.baseUrl = EnvVars.BASE_URL;

  final _log = getLogger('CategoryService');

  Future<List<Category>> getCategories([List<int>? idFilter]) async {
    _log.i('idFilter: $idFilter');

    final response = await _dio.get(
      '/categories/',
      queryParameters: {
        'id[]': idFilter,
      },
    );

    return (response.data as List<dynamic>).map((category) => Category.fromJson(category)).toList();
  }
}
