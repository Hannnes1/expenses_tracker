import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../lib/features/categories/controllers/get_categories.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return await getCategories(context);
    default:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}
