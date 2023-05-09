// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crashlytics.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$crashlyticsHash() => r'8179211791f8f9b8e08bd7bc0249147e97faf602';

/// Returns an instance of [FirebaseCrashlytics].
///
/// Null will be returned if the app is running on the web or on Linux.
///
/// Copied from [crashlytics].
@ProviderFor(crashlytics)
final crashlyticsProvider = AutoDisposeProvider<FirebaseCrashlytics?>.internal(
  crashlytics,
  name: r'crashlyticsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$crashlyticsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CrashlyticsRef = AutoDisposeProviderRef<FirebaseCrashlytics?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
