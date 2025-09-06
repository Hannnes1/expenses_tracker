import 'package:expensetrack/core/repositories/crashlytics.dart';
import 'package:expensetrack/core/services/crashlytics_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logger.g.dart';

/// Get a logger for the specified [className].
///
/// [className] does not have to be a class, but should be a string that
/// identifies where the log comes from.
///
/// [extraOutput] can be used to specify additional locations that the output
/// should be sent to. This is done during testing, to be able to
/// read the output.
@riverpod
Logger logger(Ref ref, String className, [List<LogOutput>? extraOutput]) {
  return Logger(
    filter: LevelLogFilter(),
    printer: SimpleLogPrinter(className),
    output: MultipleLoggerOutput([
      if (!kReleaseMode) ConsoleOutput(),
      CrashlyticsOutput(ref.watch(crashlyticsProvider)),
      ...?extraOutput,
    ]),
  );
}

@riverpod
Logger providerLogger(Ref ref) {
  return Logger(
    filter: LevelLogFilter(),
    // The ProviderLogger doesn't need a class, since the provider itself is identifying.
    printer: SimpleLogPrinter('', false),
    output: MultipleLoggerOutput([
      if (!kReleaseMode) ConsoleOutput(),
      CrashlyticsOutput(ref.watch(crashlyticsProvider)),
    ]),
  );
}

class SimpleLogPrinter extends LogPrinter {
  final String className;
  final bool includeMethodName;

  SimpleLogPrinter(
    this.className, [
    this.includeMethodName = true,
  ]);

  // Colors from this table:
  // https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#256-colors
  static final _levelColors = {
    Level.trace: const AnsiColor.fg(240),
    Level.debug: const AnsiColor.fg(247),
    Level.info: const AnsiColor.fg(12),
    Level.warning: const AnsiColor.fg(208),
    Level.error: const AnsiColor.fg(196),
    Level.fatal: const AnsiColor.fg(199),
  };

  @override
  List<String> log(LogEvent event) {
    final color = _levelColors[event.level];
    final methodName = includeMethodName ? _getMethodName() : '';

    final methodNameSection = methodName.isNotEmpty ? ' | $methodName' : '';
    var stackTrace = event.stackTrace;
    final error = event.error;

    var output = '$className$methodNameSection - ${event.message}';

    if (error != null) {
      output += '\nERROR:\n$error';
    }

    if (event.level == Level.error && stackTrace == null) {
      stackTrace = StackTrace.current;
    }

    if (stackTrace != null) {
      output += '\nSTACKTRACE:\n$stackTrace';
    }

    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    final result = <String>[];

    for (final line in output.split('\n')) {
      result.addAll(pattern.allMatches(line).map((match) {
        // We don't want colored logs in production, since it adds unnecessary junk to raw text.
        if (!kDebugMode) {
          return match.group(0)!;
        } else {
          return color!(match.group(0)!);
        }
      }));
    }

    return result;
  }

  String _getMethodName() {
    final currentStack = StackTrace.current;
    final formattedStacktrace = _formatStackTrace(currentStack, 3);

    final realFirstLine = formattedStacktrace?.firstWhere((line) => line.contains(className), orElse: () => '');

    final methodName = realFirstLine?.replaceAll('$className.', '');
    return methodName ?? '';
  }
}

final _stackTraceRegex = RegExp(r'#[0-9]+[\s]+(.+) \(([^\s]+)\)');

List<String>? _formatStackTrace(StackTrace stackTrace, int methodCount) {
  final lines = stackTrace.toString().split('\n');

  final formatted = <String>[];
  var count = 0;
  for (final line in lines) {
    final match = _stackTraceRegex.matchAsPrefix(line);
    if (match != null) {
      if (match.group(2)!.startsWith('package:logger')) {
        continue;
      }
      final newLine = ('${match.group(1)}');
      formatted.add(newLine.replaceAll('<anonymous closure>', '()'));
      if (++count == methodCount) {
        break;
      }
    } else {
      formatted.add(line);
    }
  }

  if (formatted.isEmpty) {
    return null;
  } else {
    return formatted;
  }
}

class MultipleLoggerOutput extends LogOutput {
  final List<LogOutput> logOutputs;
  MultipleLoggerOutput(this.logOutputs);

  @override
  void output(OutputEvent event) {
    for (final logOutput in logOutputs) {
      try {
        logOutput.output(event);
      } catch (e) {
        if (kDebugMode) {
          print('Log output failed:\n$e');
        }
      }
    }
  }
}

class LevelLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return event.level.index >= level!.index;
  }
}

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    final container = context.container;
    final provider = context.provider;

    final logger = container.read(providerLoggerProvider);

    // There is a bug in Firebase for Desktop that causes `toString` to throw an
    // unimplemented error. If that happens, we just log that we couldn't log
    // the value.
    try {
      logger.i('[${provider.name ?? provider.runtimeType}] value: $newValue');
    } catch (e) {
      logger.i('[${provider.name ?? provider.runtimeType}] value: [Could not log value]');
    }
  }
}
