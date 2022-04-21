import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/app/app.router.dart';
import 'package:expensetrack/app/ui_helper.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  final _log = getLogger('HomeViewModel');

  final PageController pageController = PageController();

  int get currentPage => pageController.hasClients ? pageController.page!.round() : 0;

  void init() {
    _log.i('');

    pageController.addListener(() {
      notifyListeners();
    });
  }

  set currentPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: UiHelper.animationCurve,
    );
  }

  Future<void> navigateToAddTransactions() async {
    _log.i('');

    await _navigationService.navigateTo(Routes.addTransactionsView);
  }
}
