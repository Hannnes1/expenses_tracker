// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(categoriesRepository)
const categoriesRepositoryProvider = CategoriesRepositoryProvider._();

final class CategoriesRepositoryProvider extends $FunctionalProvider<
    CategoriesRepository,
    CategoriesRepository,
    CategoriesRepository> with $Provider<CategoriesRepository> {
  const CategoriesRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'categoriesRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$categoriesRepositoryHash();

  @$internal
  @override
  $ProviderElement<CategoriesRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CategoriesRepository create(Ref ref) {
    return categoriesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoriesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoriesRepository>(value),
    );
  }
}

String _$categoriesRepositoryHash() =>
    r'e18a93daf600e80cff929ffe54feb5c0c96013b2';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
