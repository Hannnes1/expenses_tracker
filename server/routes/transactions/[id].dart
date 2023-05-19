import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../lib/features/transactions/controllers/get_transaction.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return await getTransaction(context, id);
    default:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}
