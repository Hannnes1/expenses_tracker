import 'package:expensetrack/features/authentication/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.g.dart';

@riverpod
Stream<User?> authStateChange(Ref ref) {
  return ref.watch(authRepositoryProvider).authStateChanges;
}

@riverpod
User? currentUser(Ref ref) {
  return ref.watch(authStateChangeProvider).value;
}
