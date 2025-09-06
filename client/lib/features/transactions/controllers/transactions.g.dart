// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(paginatedTransactions)
const paginatedTransactionsProvider = PaginatedTransactionsFamily._();

final class PaginatedTransactionsProvider extends $FunctionalProvider<
        AsyncValue<List<Transaction>>,
        List<Transaction>,
        FutureOr<List<Transaction>>>
    with
        $FutureModifier<List<Transaction>>,
        $FutureProvider<List<Transaction>> {
  const PaginatedTransactionsProvider._(
      {required PaginatedTransactionsFamily super.from,
      required int super.argument})
      : super(
          retry: null,
          name: r'paginatedTransactionsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$paginatedTransactionsHash();

  @override
  String toString() {
    return r'paginatedTransactionsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Transaction>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Transaction>> create(Ref ref) {
    final argument = this.argument as int;
    return paginatedTransactions(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PaginatedTransactionsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$paginatedTransactionsHash() =>
    r'30c9878c99e3b98582119b922516264705db8cb0';

final class PaginatedTransactionsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Transaction>>, int> {
  const PaginatedTransactionsFamily._()
      : super(
          retry: null,
          name: r'paginatedTransactionsProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  PaginatedTransactionsProvider call(
    int page,
  ) =>
      PaginatedTransactionsProvider._(argument: page, from: this);

  @override
  String toString() => r'paginatedTransactionsProvider';
}

@ProviderFor(transaction)
const transactionProvider = TransactionFamily._();

final class TransactionProvider extends $FunctionalProvider<
        AsyncValue<Transaction>, Transaction, FutureOr<Transaction>>
    with $FutureModifier<Transaction>, $FutureProvider<Transaction> {
  const TransactionProvider._(
      {required TransactionFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'transactionProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$transactionHash();

  @override
  String toString() {
    return r'transactionProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Transaction> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Transaction> create(Ref ref) {
    final argument = this.argument as String;
    return transaction(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TransactionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$transactionHash() => r'afe1674ede1fdc6d2c1d5ee94747c2cd04bc6746';

final class TransactionFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Transaction>, String> {
  const TransactionFamily._()
      : super(
          retry: null,
          name: r'transactionProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  TransactionProvider call(
    String id,
  ) =>
      TransactionProvider._(argument: id, from: this);

  @override
  String toString() => r'transactionProvider';
}

@ProviderFor(TransactionsFilterController)
const transactionsFilterControllerProvider =
    TransactionsFilterControllerProvider._();

final class TransactionsFilterControllerProvider extends $NotifierProvider<
    TransactionsFilterController, TransactionsFilterState> {
  const TransactionsFilterControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'transactionsFilterControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$transactionsFilterControllerHash();

  @$internal
  @override
  TransactionsFilterController create() => TransactionsFilterController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionsFilterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionsFilterState>(value),
    );
  }
}

String _$transactionsFilterControllerHash() =>
    r'0599894097f7a50472a16c9bf75717ad9a204529';

abstract class _$TransactionsFilterController
    extends $Notifier<TransactionsFilterState> {
  TransactionsFilterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<TransactionsFilterState, TransactionsFilterState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<TransactionsFilterState, TransactionsFilterState>,
        TransactionsFilterState,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
