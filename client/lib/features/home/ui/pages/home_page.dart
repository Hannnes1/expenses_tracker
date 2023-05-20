import 'package:expensetrack/features/authentication/services/auth_service.dart';
import 'package:expensetrack/features/authentication/ui/widgets/sign_in_widget.dart';
import 'package:expensetrack/features/home/ui/pages/menu_page.dart';
import 'package:expensetrack/features/statistics/ui/pages/statistics_page.dart';
import 'package:expensetrack/features/transactions/ui/pages/transactions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final authenticated = ref.watch(currentUserProvider) != null;

    final body = IndexedStack(
      index: _selectedIndex,
      children: [
        authenticated ? const StatisticsPage() : const SignInWidget(),
        authenticated ? const TransactionsPage() : const SignInWidget(),
        const MenuPage(),
      ],
    );

    final title = const [
      'Statistics',
      'Transactions',
      'Menu',
    ][_selectedIndex];

    return Scaffold(
      body: body,
      appBar: AppBar(
        title: Text(title),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(MdiIcons.chartLine),
            label: 'Statistics',
          ),
          NavigationDestination(
            icon: Icon(MdiIcons.cashMultiple),
            label: 'Transactions',
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
