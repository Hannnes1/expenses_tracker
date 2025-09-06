// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(accountsRepository)
const accountsRepositoryProvider = AccountsRepositoryProvider._();

final class AccountsRepositoryProvider extends $FunctionalProvider<
    AccountsRepository,
    AccountsRepository,
    AccountsRepository> with $Provider<AccountsRepository> {
  const AccountsRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'accountsRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$accountsRepositoryHash();

  @$internal
  @override
  $ProviderElement<AccountsRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AccountsRepository create(Ref ref) {
    return accountsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AccountsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AccountsRepository>(value),
    );
  }
}

String _$accountsRepositoryHash() =>
    r'30aaa3af5dfcceedd6e1c8d9352791d9a21ce905';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
