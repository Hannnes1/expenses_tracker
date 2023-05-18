import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import '../../lib/features/statistics/controllers/get_overview.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return await getOverview(context);
    default:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}
