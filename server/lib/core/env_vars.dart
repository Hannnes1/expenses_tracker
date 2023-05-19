import 'package:dotenv/dotenv.dart';

/// Class to provide type safe access to environment variables.
///
/// [setup] must be called before any variable is used.
class EnvVars {
  static void setup() {
    final env = DotEnv(includePlatformEnvironment: true);

    // If we are in production, the environment variables will be set by docker.
    if (env['DART_ENV'] != 'production') {
      env.load();
    }

    dbHost = env['DB_HOST']!;
    dbPort = int.parse(env['DB_PORT']!);
    dbName = env['DB_NAME']!;
    dbUser = env['DB_USER']!;
    dbPassword = env['DB_PASSWORD']!;
  }

  static late final String dbHost;
  static late final int dbPort;
  static late final String dbName;
  static late final String dbUser;
  static late final String dbPassword;
}
