import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:http/http.dart' as http;

Middleware authRepositoryProvider() {
  return provider<AuthRepository>(
    (context) => AuthRepository(),
  );
}

class AuthRepository {
  /// The public keys used to validate the JWT token.
  ///
  /// Stored as a map of key id to public key.
  Map<String, String>? _publicKeys;

  DateTime? _publicKeyExpiry;

  /// Validates a JWT token against firebase auth.
  ///
  /// Returns the user id if the token is valid.
  Future<String?> validateJWT(String token) async {
    try {
      await _updatePublicKeys();

      print(token);

      final jwt = JWT.decode(token);
      final kid = jwt.header!['kid'] as String;

      await JWT.verify(token, RSAPublicKey(_publicKeys![kid]!));

      return jwt.payload['sub'];
    } catch (e) {
      print('JWT Error: $e}');

      return null;
    }
  }

  /// Get the secret key from firebase auth.
  Future<void> _updatePublicKeys() async {
    if (_publicKeyExpiry?.isAfter(DateTime.now()) ?? false) {
      return;
    }

    print('Updating public keys...');

    final response = await http.get(
      Uri.parse('https://www.googleapis.com/robot/v1/metadata/x509/securetoken@system.gserviceaccount.com'),
    );

    _publicKeys = jsonDecode(response.body).cast<String, String>();

    final cacheControl = int.tryParse(response.headers['cache-control'] ?? '0');

    _publicKeyExpiry = DateTime.now().add(Duration(seconds: cacheControl ?? 0));
  }
}
