import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../lib/features/transactions/controllers/get_transactions.dart';
import '../../lib/features/transactions/controllers/create_transaction.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return await getTransactions(context);
    case HttpMethod.post:
      return await createTransaction(context);
    default:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}
