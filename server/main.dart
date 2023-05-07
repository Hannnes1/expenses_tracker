import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import 'lib/core/env_vars.dart';

Future<void> init(InternetAddress ip, int port) async {
  EnvVars.setup();
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  return serve(handler, ip, port);
}
