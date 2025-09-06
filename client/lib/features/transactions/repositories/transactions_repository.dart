import 'package:dio/dio.dart';
import 'package:expensetrack/core/constants.dart';
import 'package:expensetrack/core/services/dio.dart';
import 'package:expensetrack/core/services/error_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'transactions_repository.g.dart';

@riverpod
TransactionsRepository transactionsRepository(Ref ref) {
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
    TransactionsOrder order = TransactionsOrder.dateDesc,
    DateTime? startDate,
    DateTime? endDate,
    List<String> categories = const [],
  }) async {
    try {
      final response = await _dio.get(
        '/transactions',
        queryParameters: {
          'offset': offset,
          'limit': limit,
          'order': order.toString(),
          'startDate': startDate?.toIso8601String(),
          'endDate': endDate?.toIso8601String(),
          'categories': categories.join(','),
        },
      );

      return (response.data as List).map((e) => Transaction.fromJson(e)).toList();
    } on DioException catch (e) {
      throw _errorService.httpHandler(e);
    }
  }

  Future<Transaction> getTransaction(String id) async {
    try {
      final response = await _dio.get(
        '/transactions/$id',
      );

      return Transaction.fromJson(response.data);
    } on DioException catch (e) {
      throw _errorService.httpHandler(e);
    }
  }

  Future<Transaction> createTransaction(CreateTransaction transaction) async {
    try {
      final response = await _dio.post(
        '/transactions',
        data: transaction.toJson(),
      );

      return Transaction.fromJson(response.data);
    } on DioException catch (e) {
      throw _errorService.httpHandler(e);
    }
  }

  Future<Transaction> updateTransaction(String id, CreateTransaction transaction) async {
    try {
      final response = await _dio.patch(
        '/transactions/$id',
        data: transaction.toJson(),
      );

      return Transaction.fromJson(response.data);
    } on DioException catch (e) {
      throw _errorService.httpHandler(e);
    }
  }

  Future<void> deleteTransaction(String id) async {
    try {
      await _dio.delete(
        '/transactions/$id',
      );
    } on DioException catch (e) {
      throw _errorService.httpHandler(e);
    }
  }
}
