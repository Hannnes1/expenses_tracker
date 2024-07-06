import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

extension DateTimeExtentions on DateTime {
  /// Format the [DateTime] as the local date.
  ///
  /// To get both the date and time see [localFormat].
  /// For time only see [localTime].
  String localDate() {
    return DateFormat.yMMMd('en_SE').format(toLocal());
  }

  /// Format the `dateTime` as the local date and time.
  ///
  /// For date only see [localDate]. For time only see [localTime].
  String localFormat() {
    return DateFormat.yMMMd('en_SE').add_Hm().format(toLocal());
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

extension AutoDisposeExtension on AutoDisposeRef {
  // When invoked keeps your provider alive for [duration]
  void cacheFor(Duration duration) {
    final link = keepAlive();
    final timer = Timer(duration, () => link.close());
    onDispose(() => timer.cancel());
  }
}

/// Adds colors not present in [ColorScheme].
extension ColorSchemeExtensions on ColorScheme {
  /// The color of a disabled elements, for example a disabled button.
  ///
  /// This is copied from the style of a [FilledButton].
  Color get disabled => onSurface.withOpacity(0.12);

  /// The color for text on [disabled] elements.
  ///
  /// This is copied from the style of a [FilledButton].
  Color get onDisabled => onSurface.withOpacity(0.38);
}
