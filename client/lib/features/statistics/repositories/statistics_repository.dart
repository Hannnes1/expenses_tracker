import 'package:dio/dio.dart';
import 'package:expensetrack/core/services/dio.dart';
import 'package:expensetrack/core/services/error_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'statistics_repository.g.dart';

@riverpod
StatisticsRepository statisticsRepository(Ref ref) {
  return StatisticsRepository(ref);
}

class StatisticsRepository {
  StatisticsRepository(this._ref);

  final Ref _ref;

  Dio get _dio => _ref.read(dioProvider);
  ErrorService get _errorService => _ref.read(errorServiceProvider);

  Future<StatisticsOverview> getOverview({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final response = await _dio.get(
        '/statistics',
        queryParameters: {
          if (startDate != null) 'startDate': startDate.toIso8601String(),
          if (endDate != null) 'endDate': endDate.toIso8601String(),
        },
      );

      return StatisticsOverview.fromJson(response.data);
    } on DioException catch (e) {
      throw _errorService.httpHandler(e);
    }
  }
}
