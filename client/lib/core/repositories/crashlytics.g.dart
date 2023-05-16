// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crashlytics.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$crashlyticsHash() => r'52b8e5a7a0734ef5f4c43dbe608b2a6c54ac56e1';

/// Returns an instance of [FirebaseCrashlytics].
///
/// Null will be returned if the app is running on the web.
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
