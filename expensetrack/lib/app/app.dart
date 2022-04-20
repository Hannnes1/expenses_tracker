import 'package:expensetrack/services/transaction_service.dart';
import 'package:expensetrack/ui/view/add_transaction/add_transaction_view.dart';
import 'package:expensetrack/ui/view/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:dio/dio.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: AddTransactionView),
  ],
  dependencies: [
    LazySingleton(classType: Dio),
    LazySingleton(classType: TransactionService),
    LazySingleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {}
