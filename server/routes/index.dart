import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../lib/features/transactions/controllers/get_transactions.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return await getTransactions(context);
    default:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}
