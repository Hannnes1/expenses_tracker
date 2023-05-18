import 'package:flutter/material.dart';

/// A widget for indicating that an error occurred while loading a provider.
class ProviderError extends StatelessWidget {
  const ProviderError({
    super.key,
    required this.error,
    required this.stackTrace,
    required this.errorText,
  });

  final Object error;
  final StackTrace stackTrace;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Text(errorText),
      ),
    );
  }
}
