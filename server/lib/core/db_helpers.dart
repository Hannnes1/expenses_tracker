import 'package:postgres/postgres.dart';

String repeatParameters(String prefix, int count) {
  return List.generate(count, (index) => '@$prefix$index').join(', ');
}

Map<String, dynamic> repeatparameters(String prefix, Iterable<dynamic> values) {
  return Map.fromEntries(values.toList().asMap().entries.map((e) => MapEntry('$prefix${e.key}', e.value)));
}

extension ConnectionExtension on Connection {
  Future<Result> executeNamed(String query, {Map<String, dynamic>? parameters}) {
    return execute(
      Sql.named(query),
      parameters: parameters,
    );
  }
}
