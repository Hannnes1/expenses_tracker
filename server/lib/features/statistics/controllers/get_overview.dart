import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

import '../../authentication/models/user_info.dart';
import '../repositories/statistics_repository.dart';

Future<Response> getOverview(RequestContext context) async {
  final statisticsRepository = await context.read<Future<StatisticsRepository>>();

  final userId = context.read<UserInfo>().id;

  final yearMonthlyAverage = await statisticsRepository.getYearMonthlyAverage(userId);
  final monthlyCategoryTotals = await statisticsRepository.getMonthlyCategoryTotals(userId);
  final last12MonthsCategoryAverage = await statisticsRepository.getLast12MonthsCategoryAverage(userId);

  return Response.json(
    body: StatisticsOverview(
      yearMonthlyAverage: yearMonthlyAverage,
      monthlyCategoryTotals: monthlyCategoryTotals,
      last12MonthsCategoryAverage: last12MonthsCategoryAverage,
    ),
  );
}
