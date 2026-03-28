import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../lib/core/db_connection.dart';
import '../lib/features/accounts/repositories/account_repository.dart';
import '../lib/features/authentication/models/user_info.dart';
import '../lib/features/categories/repositories/category_repository.dart';
import '../lib/features/transactions/repositories/transaction_repository.dart';
import '../lib/features/transactions/services/transaction_conversion_service.dart';
import '../lib/features/authentication/repositories/auth_repository.dart';
import '../lib/features/statistics/repositories/statistics_repository.dart';

Handler middleware(Handler handler) {
  // The order of the providers is important.
  // Dependencies need to be placed *after* the providers that use them.
  handler = handler
      .use(transactionConversionServiceProvider())
      .use(statisticsRepositoryProvider())
      .use(transactionRepositoryProvider())
      .use(categoryRepositoryProvider())
      .use(accountRepositoryProvider())
      .use(dbConnectionProvider())
      .use(authMiddleware())
      .use(authRepositoryProvider())
      .use(corsMiddleware())
      .use(requestLogger());

  return handler;
}

Middleware corsMiddleware() {
  return (handler) {
    return (context) async {
      if (context.request.method == HttpMethod.options) {
        return Response(
          statusCode: HttpStatus.ok,
          headers: {
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, PATCH, OPTIONS',
            'Access-Control-Allow-Headers': 'Content-Type, Authorization',
          },
        );
      }
      final response = await handler(context);
      return response.copyWith(
        headers: {
          ...response.headers,
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, PATCH, OPTIONS',
          'Access-Control-Allow-Headers': 'Content-Type, Authorization',
        },
      );
    };
  };
}

Middleware authMiddleware() {
  return (handler) {
    return (context) async {
      print('Auth middleware called for ${context.request.method} ${context.request.uri}');

      if (context.request.method == HttpMethod.options) {
        return handler(context);
      }

      if (context.request.headers['Authorization']?.isEmpty ?? true) {
        return Response(statusCode: HttpStatus.unauthorized);
      }

      final authRepository = context.read<AuthRepository>();

      final userId = await authRepository.validateJWT(
        context.request.headers['Authorization']!.replaceFirst('Bearer ', ''),
      );

      if (userId == null) {
        return Response(statusCode: HttpStatus.unauthorized);
      }

      context = context.provide(
        () => UserInfo(
          id: userId,
        ),
      );

      return handler(context);
    };
  };
}
