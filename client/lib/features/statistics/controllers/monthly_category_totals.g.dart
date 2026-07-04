// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_category_totals.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// A map of categories and their data points.

@ProviderFor(categorizedMonthlyCategoryTotals)
final categorizedMonthlyCategoryTotalsProvider =
    CategorizedMonthlyCategoryTotalsProvider._();

/// A map of categories and their data points.

final class CategorizedMonthlyCategoryTotalsProvider
    extends $FunctionalProvider<
        AsyncValue<SplayTreeMap<Category, List<MonthlyCategoryTotals>>>,
        SplayTreeMap<Category, List<MonthlyCategoryTotals>>,
        FutureOr<SplayTreeMap<Category, List<MonthlyCategoryTotals>>>>
    with
        $FutureModifier<SplayTreeMap<Category, List<MonthlyCategoryTotals>>>,
        $FutureProvider<SplayTreeMap<Category, List<MonthlyCategoryTotals>>> {
  /// A map of categories and their data points.
  CategorizedMonthlyCategoryTotalsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'categorizedMonthlyCategoryTotalsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$categorizedMonthlyCategoryTotalsHash();

  @$internal
  @override
  $FutureProviderElement<SplayTreeMap<Category, List<MonthlyCategoryTotals>>>
      $createElement($ProviderPointer pointer) =>
          $FutureProviderElement(pointer);

  @override
  FutureOr<SplayTreeMap<Category, List<MonthlyCategoryTotals>>> create(
      Ref ref) {
    return categorizedMonthlyCategoryTotals(ref);
  }
}

String _$categorizedMonthlyCategoryTotalsHash() =>
    r'9c95cc3f1efc989ac35e72e41a31c1c7227aec7c';
