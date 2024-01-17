// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paginatedTransactionsHash() =>
    r'1be373f962f4ea07eb1f5cb13bbbd9bff810ceb3';

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
    int page,
  ) : this._internal(
          (ref) => paginatedTransactions(
            ref as PaginatedTransactionsRef,
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
          page: page,
        );

  PaginatedTransactionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<Transaction>> Function(PaginatedTransactionsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PaginatedTransactionsProvider._internal(
        (ref) => create(ref as PaginatedTransactionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Transaction>> createElement() {
    return _PaginatedTransactionsProviderElement(this);
  }

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

mixin PaginatedTransactionsRef
    on AutoDisposeFutureProviderRef<List<Transaction>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _PaginatedTransactionsProviderElement
    extends AutoDisposeFutureProviderElement<List<Transaction>>
    with PaginatedTransactionsRef {
  _PaginatedTransactionsProviderElement(super.provider);

  @override
  int get page => (origin as PaginatedTransactionsProvider).page;
}

String _$transactionHash() => r'a96e467c8bd05e6e2a70dca0d8d1a2c4d7442200';

/// See also [transaction].
@ProviderFor(transaction)
const transactionProvider = TransactionFamily();

/// See also [transaction].
class TransactionFamily extends Family<AsyncValue<Transaction>> {
  /// See also [transaction].
  const TransactionFamily();

  /// See also [transaction].
  TransactionProvider call(
    String id,
  ) {
    return TransactionProvider(
      id,
    );
  }

  @override
  TransactionProvider getProviderOverride(
    covariant TransactionProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'transactionProvider';
}

/// See also [transaction].
class TransactionProvider extends AutoDisposeFutureProvider<Transaction> {
  /// See also [transaction].
  TransactionProvider(
    String id,
  ) : this._internal(
          (ref) => transaction(
            ref as TransactionRef,
            id,
          ),
          from: transactionProvider,
          name: r'transactionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$transactionHash,
          dependencies: TransactionFamily._dependencies,
          allTransitiveDependencies:
              TransactionFamily._allTransitiveDependencies,
          id: id,
        );

  TransactionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Transaction> Function(TransactionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TransactionProvider._internal(
        (ref) => create(ref as TransactionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Transaction> createElement() {
    return _TransactionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TransactionProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TransactionRef on AutoDisposeFutureProviderRef<Transaction> {
  /// The parameter `id` of this provider.
  String get id;
}

class _TransactionProviderElement
    extends AutoDisposeFutureProviderElement<Transaction> with TransactionRef {
  _TransactionProviderElement(super.provider);

  @override
  String get id => (origin as TransactionProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
