// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paginatedTransactionsHash() =>
    r'11aa96c1cd15ad994d66672564e732485d94dafa';

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

typedef PaginatedTransactionsRef
    = AutoDisposeFutureProviderRef<List<Transaction>>;

/// See also [paginatedTransactions].
@ProviderFor(paginatedTransactions)
const paginatedTransactionsProvider = PaginatedTransactionsFamily();

/// See also [paginatedTransactions].
class PaginatedTransactionsFamily
    extends Family<AsyncValue<List<Transaction>>> {
  /// See also [paginatedTransactions].
  const PaginatedTransactionsFamily();

  /// See also [paginatedTransactions].
  PaginatedTransactionsProvider call(
    int page,
  ) {
    return PaginatedTransactionsProvider(
      page,
    );
  }

  @override
  PaginatedTransactionsProvider getProviderOverride(
    covariant PaginatedTransactionsProvider provider,
  ) {
    return call(
      provider.page,
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
  String? get name => r'paginatedTransactionsProvider';
}

/// See also [paginatedTransactions].
class PaginatedTransactionsProvider
    extends AutoDisposeFutureProvider<List<Transaction>> {
  /// See also [paginatedTransactions].
  PaginatedTransactionsProvider(
    this.page,
  ) : super.internal(
          (ref) => paginatedTransactions(
            ref,
            page,
          ),
          from: paginatedTransactionsProvider,
          name: r'paginatedTransactionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paginatedTransactionsHash,
          dependencies: PaginatedTransactionsFamily._dependencies,
          allTransitiveDependencies:
              PaginatedTransactionsFamily._allTransitiveDependencies,
        );

  final int page;

  @override
  bool operator ==(Object other) {
    return other is PaginatedTransactionsProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
