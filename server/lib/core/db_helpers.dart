String repeatParameters(String prefix, int count) {
  return List.generate(count, (index) => '@$prefix$index').join(', ');
}

Map<String, dynamic> repeatSubstitutionValues(String prefix, Iterable<dynamic> values) {
  return Map.fromEntries(values.toList().asMap().entries.map((e) => MapEntry('$prefix${e.key}', e.value)));
}
