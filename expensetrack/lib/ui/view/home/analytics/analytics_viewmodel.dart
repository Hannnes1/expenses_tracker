import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/services/transaction_service.dart';
import 'package:stacked/stacked.dart';

class AnalyticsViewModel extends BaseViewModel {
  final TransactionService _transactionService = locator<TransactionService>();

  final _log = getLogger('AnalyticsViewModel');

  Future<void> init() async {
    _log.i('');

    await _transactionService.getResultByMonth(DateTime(2000), DateTime.now()).then((result) {
      _log.i('result: $result');
    });
  }
}
