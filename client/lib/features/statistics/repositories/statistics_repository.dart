import 'package:dio/dio.dart';
import 'package:expensetrack/core/services/dio.dart';
import 'package:expensetrack/core/services/error_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'statistics_repository.g.dart';

@riverpod
StatisticsRepository statisticsRepository(StatisticsRepositoryRef ref) {
  return StatisticsRepository(ref);
}

class StatisticsRepository {
  StatisticsRepository(this._ref);

  final Ref _ref;

  Dio get _dio => _ref.read(dioProvider);
  ErrorService get _errorService => _ref.read(errorServiceProvider);

  Future<StatisticsOverview> getOverview() async {
    try {
      final response = await _dio.get('/statistics');

      return StatisticsOverview.fromJson(response.data);
    } on DioException catch (e) {
      throw _errorService.httpHandler(e);
    }
  }
}
