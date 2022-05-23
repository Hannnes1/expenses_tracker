import 'package:expensetrack/ui/view/home/analytics/analytics_view.dart';
import 'package:expensetrack/ui/view/home/categories/categories_view.dart';
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
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: model.navigateToAddTransactions,
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
					unselectedItemColor: Colors.grey,
					selectedItemColor: Theme.of(context).colorScheme.secondary,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart),
              label: 'Analytics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz),
              label: 'Transactions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
          ],
          currentIndex: model.currentPage,
          onTap: (index) => model.currentPage = index,
        ),
        body: PageView(
          controller: model.pageController,
          children: const [
            OverviewView(),
            AnalyticsView(),
            TransactionsView(),
						CategoriesView(),
          ],
        ),
      ),
    );
  }
}
