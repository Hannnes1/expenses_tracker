import 'package:postgres/postgres.dart';

import 'env_vars.dart';

PostgreSQLConnection connection = PostgreSQLConnection(
  EnvVars.dbHost,
  EnvVars.dbPort,
  EnvVars.dbName,
  username: EnvVars.dbUser,
  password: EnvVars.dbPassword,
);
