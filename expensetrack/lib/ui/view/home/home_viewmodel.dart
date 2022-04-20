import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/app/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final PageController pageController = PageController();
  
  final _log = getLogger('HomeViewModel');

  void init() {
    _log.i('');

    pageController.addListener(() {
      notifyListeners();
    });
  }

  void goToPage(int index) {
    _log.i('index: $index');

    pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: UiHelper.animationCurve);
  }
}
