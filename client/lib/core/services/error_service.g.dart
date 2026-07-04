// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(errorService)
final errorServiceProvider = ErrorServiceProvider._();

final class ErrorServiceProvider
    extends $FunctionalProvider<ErrorService, ErrorService, ErrorService>
    with $Provider<ErrorService> {
  ErrorServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'errorServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$errorServiceHash();

  @$internal
  @override
  $ProviderElement<ErrorService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ErrorService create(Ref ref) {
    return errorService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ErrorService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ErrorService>(value),
    );
  }
}

String _$errorServiceHash() => r'd5fa0ea2b5bc45f9a74531d1aebb6334ed76e8d9';
