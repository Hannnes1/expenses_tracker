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

    try {
      await _dio.post(
        '/transactions/',
        data: {
          'transactions': transactions.map((e) => e.toJson()).toList(),
        },
      );
      _log.i('Successfully added transactions');
    } catch (e) {
      _log.e('Error adding transactions: $e');
    }
  }
}
