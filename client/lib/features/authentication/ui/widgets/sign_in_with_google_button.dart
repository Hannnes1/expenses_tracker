import 'package:expensetrack/features/authentication/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInWithGoogleButton extends ConsumerWidget {
  const SignInWithGoogleButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton(
      onPressed: ref.read(authRepositoryProvider).signInWithGoogle,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/google_g.png',
            height: 24,
          ),
          const SizedBox(
            width: 24,
          ),
          const Text('Sign in with Google'),
        ],
      ),
    );
  }
}
