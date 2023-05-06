import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import 'lib/utils/db_connection.dart';
import 'lib/utils/env_vars.dart';

Future<void> init(InternetAddress ip, int port) async {
  EnvVars.setup();

  await connection.open();
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  return serve(handler, ip, port);
}
