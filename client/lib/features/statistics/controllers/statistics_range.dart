import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'statistics_range.g.dart';

/// A preset window of time to scope the statistics page to.
enum StatisticsRange {
  last3Months(months: 3, label: 'Last 3 months'),
  last6Months(months: 6, label: 'Last 6 months'),
  last12Months(months: 12, label: 'Last 12 months'),
  last24Months(months: 24, label: 'Last 24 months');

  const StatisticsRange({required this.months, required this.label});

  final int months;
  final String label;

  /// The start of this range, relative to now.
  DateTime get startDate {
    final now = DateTime.now();
    return DateTime(now.year, now.month - months, now.day);
  }
}

@riverpod
class StatisticsRangeNotifier extends _$StatisticsRangeNotifier {
  @override
  StatisticsRange build() => StatisticsRange.last12Months;

  void select(StatisticsRange range) {
    state = range;
  }
}
