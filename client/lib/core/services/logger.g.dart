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
    String className, [
    List<LogOutput>? extraOutput,
  ]) : this._internal(
          (ref) => logger(
            ref as LoggerRef,
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
          className: className,
          extraOutput: extraOutput,
        );

  LoggerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.className,
    required this.extraOutput,
  }) : super.internal();

  final String className;
  final List<LogOutput>? extraOutput;

  @override
  Override overrideWith(
    Logger Function(LoggerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoggerProvider._internal(
        (ref) => create(ref as LoggerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        className: className,
        extraOutput: extraOutput,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Logger> createElement() {
    return _LoggerProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LoggerRef on AutoDisposeProviderRef<Logger> {
  /// The parameter `className` of this provider.
  String get className;

  /// The parameter `extraOutput` of this provider.
  List<LogOutput>? get extraOutput;
}

class _LoggerProviderElement extends AutoDisposeProviderElement<Logger>
    with LoggerRef {
  _LoggerProviderElement(super.provider);

  @override
  String get className => (origin as LoggerProvider).className;
  @override
  List<LogOutput>? get extraOutput => (origin as LoggerProvider).extraOutput;
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProviderLoggerRef = AutoDisposeProviderRef<Logger>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
