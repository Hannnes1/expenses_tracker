import 'package:expensetrack/ui/view/home/home_viewmodel.dart';
import 'package:expensetrack/ui/view/home/overview/overview_view.dart';
import 'package:expensetrack/ui/view/home/transactions/transactions_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: PageView(
          controller: model.pageController, 
          children: const [
            OverviewView(),
            TransactionsView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => model.goToPage(index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_outlined),
              label: 'Transactions',
            ),
          ],
        ),
      ),
    );
  }
}
