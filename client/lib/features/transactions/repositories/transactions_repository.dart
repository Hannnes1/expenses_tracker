import 'package:dio/dio.dart';
import 'package:expensetrack/core/constants.dart';
import 'package:expensetrack/core/services/dio.dart';
import 'package:expensetrack/core/services/error_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'transactions_repository.g.dart';

@riverpod
TransactionsRepository transactionsRepository(TransactionsRepositoryRef ref) {
  return TransactionsRepository(ref);
}

class TransactionsRepository {
  TransactionsRepository(this._ref);

  final Ref _ref;

  Dio get _dio => _ref.read(dioProvider);
  ErrorService get _errorService => _ref.read(errorServiceProvider);

  Future<List<Transaction>> getTransactions({
    required int offset,
    int limit = kTransactionPageLimit,
  }) async {
    try {
      final response = await _dio.get(
        '/transactions',
        queryParameters: {
          'offset': offset,
          'limit': limit,
        },
      );

      return (response.data as List).map((e) => Transaction.fromJson(e)).toList();
    } on DioError catch (e) {
      throw _errorService.httpHandler(e);
    }
  }
}
