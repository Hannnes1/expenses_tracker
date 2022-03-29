import 'package:expensetrack/services/file_picker.dart';
import 'package:expensetrack/services/transaction_service.dart';
import 'package:expensetrack/ui/view/add_transactions/add_transactions_view.dart';
import 'package:expensetrack/ui/view/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:dio/dio.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: AddTransactionsView),
  ],
  dependencies: [
    LazySingleton(classType: Dio),
    LazySingleton(classType: TransactionService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: FilePickerService),
  ],
  logger: StackedLogger(),
)
class AppSetup {}
