import 'package:intl/intl.dart';

extension DateTimeExtentions on DateTime {
  /// Format the [DateTime] as the local date.
  ///
  /// To get both the date and time see [localFormat].
  /// For time only see [localTime].
  String localDate() {
    return DateFormat.yMMMd('sv').format(toLocal());
  }

  /// Format the `dateTime` as the local date and time.
  ///
  /// For date only see [localDate]. For time only see [localTime].
  String localFormat() {
    return DateFormat.yMMMd('sv').add_Hm().format(toLocal());
  }

  /// Format the `dateTime` as the local time.
  ///
  /// To get both the date and time see [localFormat].
  /// For date only see [localDate].
  String localTime() {
    return DateFormat.Hm().format(toLocal());
  }

  /// Three letter abbreviation of the month.
  String shortMonthName() {
    return DateFormat.MMM('en_SE').format(toLocal());
  }

  /// Compare dates only, ignoring the time of day.
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  /// Get the date formated as a string relative to today.
  ///
  /// For example `Yesterday 21:03`. The time can be ommited by setting
  /// [includeTime] to false.
  String relative([bool includeTime = true]) {
    final time = includeTime ? ' ${localTime()}' : '';

    if (isSameDate(DateTime.now().subtract(const Duration(days: 1)))) {
      return 'Yesterday$time';
    }

    if (isSameDate(DateTime.now().subtract(const Duration(days: 0)))) {
      return 'Today$time';
    }

    return includeTime ? localFormat() : localDate();
  }
}

extension NumExtension on num {
  String formatCurrency() {
    return NumberFormat.currency(locale: 'sv').format(this);
  }
}
