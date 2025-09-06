// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(accounts)
const accountsProvider = AccountsProvider._();

final class AccountsProvider extends $FunctionalProvider<
        AsyncValue<List<Account>>, List<Account>, FutureOr<List<Account>>>
    with $FutureModifier<List<Account>>, $FutureProvider<List<Account>> {
  const AccountsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'accountsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$accountsHash();

  @$internal
  @override
  $FutureProviderElement<List<Account>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Account>> create(Ref ref) {
    return accounts(ref);
  }
}

String _$accountsHash() => r'af356efefecdd82df494d259856525b790077a0f';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
