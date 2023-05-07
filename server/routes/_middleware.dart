import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../lib/core/db_connection.dart';
import '../lib/features/transactions/repositories/transactions.dart';
import '../lib/features/authentication/models/user_info.dart';

Handler middleware(Handler handler) {
  return (context) {
    if (context.request.headers['Authorization']?.isEmpty ?? true) {
      return Response(statusCode: HttpStatus.unauthorized);
    }

    handler = handler
        .use(requestLogger())
        .use(transactionRepositoryProvider())
        .use(dbConnectionProvider())
        .use(userInfoProvider());

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
