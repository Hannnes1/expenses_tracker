import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../lib/features/accounts/controllers/get_accounts.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return await getAccounts(context);
    default:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}
