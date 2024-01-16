import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';

import 'env_vars.dart';

Middleware dbConnectionProvider() {
  return provider<Future<Connection>>(
    (context) async {
      return await PgClient.getConnection();
    },
  );
}

class PgClient {
  static Connection? _connection;

  static Future<Connection> getConnection() async {
    if (_connection != null && _connection!.isOpen) {
      return _connection!;
    }

    _connection = await Connection.open(
      Endpoint(
        host: EnvVars.dbHost,
        port: EnvVars.dbPort,
        database: EnvVars.dbName,
        username: EnvVars.dbUser,
        password: EnvVars.dbPassword,
      ),
      settings: ConnectionSettings(
        sslMode: SslMode.disable,
      ),
    );

    return _connection!;
  }
}
