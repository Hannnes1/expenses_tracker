import 'package:expensetrack/services/transaction_service.dart';
import 'package:expensetrack/ui/view/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:dio/dio.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: Dio),
    LazySingleton(classType: TransactionService),
  ],
  logger: StackedLogger(),
)
class AppSetup {}
