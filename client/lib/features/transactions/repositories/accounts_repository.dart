import 'package:dio/dio.dart';
import 'package:expensetrack/core/services/dio.dart';
import 'package:expensetrack/core/services/error_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared/shared.dart';

part 'accounts_repository.g.dart';

@riverpod
AccountsRepository accountsRepository(AccountsRepositoryRef ref) {
  return AccountsRepository(ref);
}

class AccountsRepository {
  AccountsRepository(this._ref);

  final Ref _ref;

  Dio get _dio => _ref.read(dioProvider);
  ErrorService get _errorService => _ref.read(errorServiceProvider);

  Future<List<Account>> getAccounts() async {
    try {
      final response = await _dio.get(
        '/accounts'
      );

      return (response.data as List).map((e) => Account.fromJson(e)).toList();
    } on DioError catch (e) {
      throw _errorService.httpHandler(e);
    }
  }
}
