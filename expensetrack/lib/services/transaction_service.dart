import 'package:dio/dio.dart';
import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/app/env_vars.dart';
import 'package:expensetrack/models/transaction.dart';

class TransactionService {
  final Dio _dio = locator<Dio>()..options.baseUrl = EnvVars.BASE_URL;

  final _log = getLogger('TransactionService');

  Future<GetTransactionsBody> getTransactions([int? offset, int? limit]) async {
    _log.i('offset: $offset | limit: $limit');

    final response = await _dio.get(
      '/transactions',
      queryParameters: {
        'offset': offset,
        'limit': limit,
      },
    );

    return GetTransactionsBody.fromJson(response.data);
  }

  Future<void> addTransactions(List<Transaction> transactions) async {
    _log.i('transactions: $transactions');

    await _dio.post(
      '/transactions/',
      data: {
        'transactions': transactions,
      },
    );
  }

  Future<List<ResultByMonth>> getResultByMonth(DateTime firstDate, DateTime lastDate) async {
    _log.i('firstDate: $firstDate | lastDate: $lastDate');

    final response = await _dio.get(
      '/transactions/result',
      queryParameters: {
        'firstDate': firstDate.toIso8601String(),
        'lastDate': lastDate.toIso8601String(),
      },
    );

    return (response.data as List).map((e) => ResultByMonth.fromJson(e)).toList();
  }
}
