import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
    required this.title,
    required this.content,
    required this.confirmText,
    required this.denyText,
  });

  final String title;
  final String content;
  final String confirmText;
  final String denyText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () => GoRouter.of(context).pop(false),
          child: Text(denyText),
        ),
        FilledButton(
          onPressed: () => GoRouter.of(context).pop(true),
          child: Text(confirmText),
        ),
      ],
    );
  }
}
