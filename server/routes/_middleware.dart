import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../lib/core/db_connection.dart';
import '../lib/features/accounts/repositories/account_repository.dart';
import '../lib/features/authentication/models/user_info.dart';
import '../lib/features/categories/repositories/category_repository.dart';
import '../lib/features/transactions/repositories/transaction_repository.dart';
import '../lib/features/transactions/services/transaction_conversion_service.dart';

Handler middleware(Handler handler) {
  return (context) {
    if (context.request.headers['Authorization']?.isEmpty ?? true) {
      return Response(statusCode: HttpStatus.unauthorized);
    }

    // The order of the providers is important.
    // Dependencies need to be placed *after* the providers that use them.
    handler = handler
        .use(transactionConversionServiceProvider())
        .use(transactionRepositoryProvider())
        .use(categoryRepositoryProvider())
        .use(accountRepositoryProvider())
        .use(dbConnectionProvider())
        .use(userInfoProvider())
        .use(requestLogger());

    return handler(context);
  };
}

Middleware userInfoProvider() {
  return provider<UserInfo>(
    (context) => UserInfo(
      // TODO: Get the user ID from the JWT.
      id: context.request.headers['Authorization']!.replaceFirst('Bearer ', ''),
    ),
  );
}
