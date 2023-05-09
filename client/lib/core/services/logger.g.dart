// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loggerHash() => r'9efb9d28b0466ad94203fb61f1eb739f1d24d3d6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef LoggerRef = AutoDisposeProviderRef<Logger>;

/// Get a logger for the specified [className].
///
/// [className] does not have to be a class, but should be a string that
/// identifies where the log comes from.
///
/// [extraOutput] can be used to specify additional locations that the output
/// should be sent to. This is done during testing, to be able to
/// read the output.
///
/// Copied from [logger].
@ProviderFor(logger)
const loggerProvider = LoggerFamily();

/// Get a logger for the specified [className].
///
/// [className] does not have to be a class, but should be a string that
/// identifies where the log comes from.
///
/// [extraOutput] can be used to specify additional locations that the output
/// should be sent to. This is done during testing, to be able to
/// read the output.
///
/// Copied from [logger].
class LoggerFamily extends Family<Logger> {
  /// Get a logger for the specified [className].
  ///
  /// [className] does not have to be a class, but should be a string that
  /// identifies where the log comes from.
  ///
  /// [extraOutput] can be used to specify additional locations that the output
  /// should be sent to. This is done during testing, to be able to
  /// read the output.
  ///
  /// Copied from [logger].
  const LoggerFamily();

  /// Get a logger for the specified [className].
  ///
  /// [className] does not have to be a class, but should be a string that
  /// identifies where the log comes from.
  ///
  /// [extraOutput] can be used to specify additional locations that the output
  /// should be sent to. This is done during testing, to be able to
  /// read the output.
  ///
  /// Copied from [logger].
  LoggerProvider call(
    String className, [
    List<LogOutput>? extraOutput,
  ]) {
    return LoggerProvider(
      className,
      extraOutput,
    );
  }

  @override
  LoggerProvider getProviderOverride(
    covariant LoggerProvider provider,
  ) {
    return call(
      provider.className,
      provider.extraOutput,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'loggerProvider';
}

/// Get a logger for the specified [className].
///
/// [className] does not have to be a class, but should be a string that
/// identifies where the log comes from.
///
/// [extraOutput] can be used to specify additional locations that the output
/// should be sent to. This is done during testing, to be able to
/// read the output.
///
/// Copied from [logger].
class LoggerProvider extends AutoDisposeProvider<Logger> {
  /// Get a logger for the specified [className].
  ///
  /// [className] does not have to be a class, but should be a string that
  /// identifies where the log comes from.
  ///
  /// [extraOutput] can be used to specify additional locations that the output
  /// should be sent to. This is done during testing, to be able to
  /// read the output.
  ///
  /// Copied from [logger].
  LoggerProvider(
    this.className, [
    this.extraOutput,
  ]) : super.internal(
          (ref) => logger(
            ref,
            className,
            extraOutput,
          ),
          from: loggerProvider,
          name: r'loggerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loggerHash,
          dependencies: LoggerFamily._dependencies,
          allTransitiveDependencies: LoggerFamily._allTransitiveDependencies,
        );

  final String className;
  final List<LogOutput>? extraOutput;

  @override
  bool operator ==(Object other) {
    return other is LoggerProvider &&
        other.className == className &&
        other.extraOutput == extraOutput;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, className.hashCode);
    hash = _SystemHash.combine(hash, extraOutput.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$providerLoggerHash() => r'1d4e3e3952d4940ede7ac02e7c5f52ac818bc799';

/// See also [providerLogger].
@ProviderFor(providerLogger)
final providerLoggerProvider = AutoDisposeProvider<Logger>.internal(
  providerLogger,
  name: r'providerLoggerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$providerLoggerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProviderLoggerRef = AutoDisposeProviderRef<Logger>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
