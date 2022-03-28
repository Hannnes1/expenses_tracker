// ignore_for_file: non_constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvVars {
  static String BASE_URL = dotenv.env['BASE_URL']!;
}