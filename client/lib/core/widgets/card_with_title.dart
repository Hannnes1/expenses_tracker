import 'package:flutter/material.dart';

class CardWithTitle extends StatelessWidget {
  const CardWithTitle({
    super.key,
    required this.title,
    this.subtitle,
    required this.child,
  });

  final String title;
  final String? subtitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textTheme.headlineSmall,
            ),
            if (subtitle != null)
              Text(
                subtitle!,
                style: textTheme.bodySmall,
              ),
            const SizedBox(
              height: 8,
            ),
            child,
          ],
        ),
      ),
    );
  }
}
