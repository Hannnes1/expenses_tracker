import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

import '../../authentication/models/user_info.dart';
import '../repositories/statistics_repository.dart';

Future<Response> getOverview(RequestContext context) async {
  final queryParameters = context.request.uri.queryParameters;

  late DateTime? startDate;
  late DateTime? endDate;
  try {
    final startDateString = queryParameters['startDate'];
    final endDateString = queryParameters['endDate'];

    startDate = startDateString?.isEmpty ?? true
        ? null
        : DateTime.parse(startDateString!);
    endDate =
        endDateString?.isEmpty ?? true ? null : DateTime.parse(endDateString!);
  } catch (e) {
    return Response.json(statusCode: HttpStatus.badRequest);
  }

  final now = DateTime.now();
  final resolvedEndDate = endDate ?? DateTime(now.year, now.month, now.day);
  final resolvedStartDate =
      startDate ?? DateTime(now.year - 1, now.month, now.day);

  // The "previous period" is the same length window immediately preceding the
  // resolved one, used to show a trend vs. the prior period.
  final periodLength = resolvedEndDate.difference(resolvedStartDate);
  final previousEndDate = resolvedStartDate;
  final previousStartDate = resolvedStartDate.subtract(periodLength);

  final statisticsRepository =
      await context.read<Future<StatisticsRepository>>();

  final userId = context.read<UserInfo>().id;

  final yearMonthlyAverage = await statisticsRepository.getYearMonthlyAverage(
    userId,
    startDate: resolvedStartDate,
    endDate: resolvedEndDate,
  );
  final previousYearMonthlyAverage =
      await statisticsRepository.getYearMonthlyAverage(
    userId,
    startDate: previousStartDate,
    endDate: previousEndDate,
  );
  final monthlyCategoryTotals =
      await statisticsRepository.getMonthlyCategoryTotals(
    userId,
    startDate: resolvedStartDate,
  );
  final categoryAverage = await statisticsRepository.getCategoryAverage(
    userId,
    startDate: resolvedStartDate,
    endDate: resolvedEndDate,
  );

  return Response.json(
    body: StatisticsOverview(
      yearMonthlyAverage: yearMonthlyAverage,
      previousYearMonthlyAverage: previousYearMonthlyAverage,
      monthlyCategoryTotals: monthlyCategoryTotals,
      categoryAverage: categoryAverage,
    ),
  );
}
