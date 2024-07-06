import 'package:expensetrack/core/router.dart';
import 'package:expensetrack/features/authentication/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MenuPage extends ConsumerWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: const Text('Sign out'),
              subtitle: const Text('Sign out of your account'),
              onTap: () => ref.read(authRepositoryProvider).signOut(),
            ),
            ListTile(
              title: const Text('Licenses'),
              subtitle: const Text('Show licenses for third-party software'),
              onTap: () => ref.read(routerProvider).go('/licenses'),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
