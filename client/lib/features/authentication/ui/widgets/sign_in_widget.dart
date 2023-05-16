import 'package:expensetrack/features/authentication/ui/widgets/sign_in_with_google_button.dart';
import 'package:flutter/material.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SignInWithGoogleButton(),
    );
  }
}
