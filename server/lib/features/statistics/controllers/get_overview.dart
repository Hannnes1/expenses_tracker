import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

import '../../authentication/models/user_info.dart';
import '../repositories/statistics_repository.dart';

Future<Response> getOverview(RequestContext context) async {
  final statisticsRepository = await context.read<Future<StatisticsRepository>>();

  final userId = context.read<UserInfo>().id;

  final yearMonthlyAverage = await statisticsRepository.getYearMonthlyAverage(userId);
  final monthlyFixedCosts = await statisticsRepository.getMonthlyFixedCosts(userId);
  final monthlyCategoryTotals = await statisticsRepository.getMonthlyCategoryTotals(userId);

  return Response.json(
    body: StatisticsOverview(
      yearMonthlyAverage: yearMonthlyAverage,
      monthlyFixedCosts: monthlyFixedCosts,
      monthlyCategoryTotals: monthlyCategoryTotals,
    ),
  );
}
