import 'package:expensetrack/app/app.locator.dart';
import 'package:expensetrack/app/app.logger.dart';
import 'package:expensetrack/models/transaction.dart';
import 'package:expensetrack/services/transaction_service.dart';
import 'package:stacked/stacked.dart';

class AnalyticsViewModel extends BaseViewModel {
  final TransactionService _transactionService = locator<TransactionService>();

  final _log = getLogger('AnalyticsViewModel');

  final List<ResultByMonth> _resultByMonth = [];

  List<ResultByMonth> get resultByMonth => _resultByMonth;

  Future<void> init() async {
    _log.i('');

    setBusy(true);

    final response = await _transactionService.getResultByMonth(DateTime(2000), DateTime.now());

    var year = response.first.year;
    var month = response.first.month;

    _addResultByDate(year, month, response);

    // Create a list of ResultByMonth for each month from the first month in the response to the last month.
    // The reason for this is that every month needs a data point, even if there are no transactions in that month.
    while (!(year == response.last.year && month == response.last.month)) {
      // Go to next month.
      if (month == 12) {
        year++;
        month = 1;
      } else {
        month++;
      }

      _addResultByDate(year, month, response);
    }

    setBusy(false);
  }

  _addResultByDate(int year, int month, List<ResultByMonth> resultList) {
    _resultByMonth.add(
      resultList.firstWhere(
        (e) => e.year == year && e.month == month && e.internal == false,
        orElse: () => ResultByMonth(year: year, month: month, income: 0, expenses: 0, internal: false),
      ),
    );
  }
}
