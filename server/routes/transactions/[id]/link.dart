import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../../lib/features/transactions/controllers/update_transaction_link.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  switch (context.request.method) {
    case HttpMethod.patch:
      return await updateTransactionLink(context, id);
    default:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}
