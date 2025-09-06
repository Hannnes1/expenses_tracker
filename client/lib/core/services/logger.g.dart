// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

/// Get a logger for the specified [className].
///
/// [className] does not have to be a class, but should be a string that
/// identifies where the log comes from.
///
/// [extraOutput] can be used to specify additional locations that the output
/// should be sent to. This is done during testing, to be able to
/// read the output.
@ProviderFor(logger)
const loggerProvider = LoggerFamily._();

/// Get a logger for the specified [className].
///
/// [className] does not have to be a class, but should be a string that
/// identifies where the log comes from.
///
/// [extraOutput] can be used to specify additional locations that the output
/// should be sent to. This is done during testing, to be able to
/// read the output.
final class LoggerProvider extends $FunctionalProvider<Logger, Logger, Logger>
    with $Provider<Logger> {
  /// Get a logger for the specified [className].
  ///
  /// [className] does not have to be a class, but should be a string that
  /// identifies where the log comes from.
  ///
  /// [extraOutput] can be used to specify additional locations that the output
  /// should be sent to. This is done during testing, to be able to
  /// read the output.
  const LoggerProvider._(
      {required LoggerFamily super.from,
      required (
        String,
        List<LogOutput>?,
      )
          super.argument})
      : super(
          retry: null,
          name: r'loggerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$loggerHash();

  @override
  String toString() {
    return r'loggerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<Logger> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Logger create(Ref ref) {
    final argument = this.argument as (
      String,
      List<LogOutput>?,
    );
    return logger(
      ref,
      argument.$1,
      argument.$2,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Logger value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Logger>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LoggerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$loggerHash() => r'38461bd2b795a8dc48fc829ea12d91fa70ca29b0';

/// Get a logger for the specified [className].
///
/// [className] does not have to be a class, but should be a string that
/// identifies where the log comes from.
///
/// [extraOutput] can be used to specify additional locations that the output
/// should be sent to. This is done during testing, to be able to
/// read the output.
final class LoggerFamily extends $Family
    with
        $FunctionalFamilyOverride<
            Logger,
            (
              String,
              List<LogOutput>?,
            )> {
  const LoggerFamily._()
      : super(
          retry: null,
          name: r'loggerProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Get a logger for the specified [className].
  ///
  /// [className] does not have to be a class, but should be a string that
  /// identifies where the log comes from.
  ///
  /// [extraOutput] can be used to specify additional locations that the output
  /// should be sent to. This is done during testing, to be able to
  /// read the output.
  LoggerProvider call(
    String className, [
    List<LogOutput>? extraOutput,
  ]) =>
      LoggerProvider._(argument: (
        className,
        extraOutput,
      ), from: this);

  @override
  String toString() => r'loggerProvider';
}

@ProviderFor(providerLogger)
const providerLoggerProvider = ProviderLoggerProvider._();

final class ProviderLoggerProvider
    extends $FunctionalProvider<Logger, Logger, Logger> with $Provider<Logger> {
  const ProviderLoggerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'providerLoggerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$providerLoggerHash();

  @$internal
  @override
  $ProviderElement<Logger> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Logger create(Ref ref) {
    return providerLogger(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Logger value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Logger>(value),
    );
  }
}

String _$providerLoggerHash() => r'e88980c998b51acf2c038135271795bca6c51464';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
