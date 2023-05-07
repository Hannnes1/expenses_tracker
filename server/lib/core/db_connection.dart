import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';

import 'env_vars.dart';

Middleware dbConnectionProvider() {
  return provider<Future<PostgreSQLConnection>>(
    (context) async {
      return await PgClient.getConnection();
    },
  );
}

class PgClient {
  static PostgreSQLConnection? _connection;

  static Future<PostgreSQLConnection> getConnection() async {
    if (_connection != null && !_connection!.isClosed) {
      return _connection!;
    }

    _connection = PostgreSQLConnection(
      EnvVars.dbHost,
      EnvVars.dbPort,
      EnvVars.dbName,
      username: EnvVars.dbUser,
      password: EnvVars.dbPassword,
    );

    await _connection!.open();

    return _connection!;
  }
}
