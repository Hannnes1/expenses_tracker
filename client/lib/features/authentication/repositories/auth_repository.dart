import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(
    auth.FirebaseAuth.instance,
    GoogleSignIn.instance,
  );
}

class AuthRepository {
  AuthRepository(
    this._auth,
    this._googleSignIn,
  );

  final auth.FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;

  Stream<auth.User?> get authStateChanges => _auth.authStateChanges();

  auth.User? get currentUser => _auth.currentUser;

  /// Get the current users access token.
  Future<String?> accessToken() async {
    return currentUser?.getIdToken();
  }

  Future<void> signInWithGoogle() async {
    // Trigger the authentication flow
    final googleUser = await _googleSignIn.authenticate();

    // Obtain the auth details from the request
    final googleAuth = googleUser.authentication;

    // Create a new credential
    final credential = auth.GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );

    await _auth.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.disconnect();
  }
}
