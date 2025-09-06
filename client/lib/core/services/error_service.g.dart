// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(errorService)
const errorServiceProvider = ErrorServiceProvider._();

final class ErrorServiceProvider
    extends $FunctionalProvider<ErrorService, ErrorService, ErrorService>
    with $Provider<ErrorService> {
  const ErrorServiceProvider._()
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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
