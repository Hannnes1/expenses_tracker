// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(transactionsRepository)
const transactionsRepositoryProvider = TransactionsRepositoryProvider._();

final class TransactionsRepositoryProvider extends $FunctionalProvider<
    TransactionsRepository,
    TransactionsRepository,
    TransactionsRepository> with $Provider<TransactionsRepository> {
  const TransactionsRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'transactionsRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$transactionsRepositoryHash();

  @$internal
  @override
  $ProviderElement<TransactionsRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TransactionsRepository create(Ref ref) {
    return transactionsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionsRepository>(value),
    );
  }
}

String _$transactionsRepositoryHash() =>
    r'c3c1aecbc8ce8b2c02ce07887ddfbb934d4304b6';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
