import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvVars {
  static String debugApiUrl = dotenv.env['DEBUG_API_URL']!;
  static String productionApiUrl = dotenv.env['PRODUCTION_API_URL']!;
}