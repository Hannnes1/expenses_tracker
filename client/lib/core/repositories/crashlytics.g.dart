// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crashlytics.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Returns an instance of [FirebaseCrashlytics].
///
/// Null will be returned if the app is running on the web.

@ProviderFor(crashlytics)
final crashlyticsProvider = CrashlyticsProvider._();

/// Returns an instance of [FirebaseCrashlytics].
///
/// Null will be returned if the app is running on the web.

final class CrashlyticsProvider extends $FunctionalProvider<
    FirebaseCrashlytics?,
    FirebaseCrashlytics?,
    FirebaseCrashlytics?> with $Provider<FirebaseCrashlytics?> {
  /// Returns an instance of [FirebaseCrashlytics].
  ///
  /// Null will be returned if the app is running on the web.
  CrashlyticsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'crashlyticsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$crashlyticsHash();

  @$internal
  @override
  $ProviderElement<FirebaseCrashlytics?> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FirebaseCrashlytics? create(Ref ref) {
    return crashlytics(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebaseCrashlytics? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebaseCrashlytics?>(value),
    );
  }
}

String _$crashlyticsHash() => r'45f6d25d0da9839a56028e330f0f67f519a57436';
