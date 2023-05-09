import 'dart:io';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// Send logs to Firebase Crashlytics.
class CrashlyticsOutput extends LogOutput {
  CrashlyticsOutput(this._crashlytics);

  final FirebaseCrashlytics? _crashlytics;

  @override
  void output(OutputEvent event) {
    // Don't log error if in debug mode, except if running tests.
    if (kDebugMode && (kIsWeb || !Platform.environment.containsKey('FLUTTER_TEST'))) return;

    final errorStart = event.lines.indexWhere((e) => e.contains('ERROR:'));
    final stackTraceStart = event.lines.indexWhere((e) => e.contains('STACKTRACE:'));

    List<String> errorLines;
    List<String> stackTrace;

    try {
      // Add one to get the actual start, and not the headings.
      errorLines = event.lines.sublist(errorStart + 1, stackTraceStart);
      stackTrace = event.lines.sublist(stackTraceStart + 1);
    } catch (e) {
      errorLines = [];
      stackTrace = [];
    }

    // Report error to Crashlytics if level is above or equal to `error`.
    // Otherwise, just log the message.
    if (event.level.index >= Level.error.index) {
      _crashlytics?.recordError(
        errorLines.join('\n'),
        StackTrace.fromString(stackTrace.join('\n')),
        reason: event.lines[0],
        fatal: true,
      );
    } else {
      _crashlytics?.log(event.lines.join('\n'));
    }
  }
}
