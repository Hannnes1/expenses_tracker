import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(MdiIcons.chartLine),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(MdiIcons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}