// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(statisticsRepository)
const statisticsRepositoryProvider = StatisticsRepositoryProvider._();

final class StatisticsRepositoryProvider extends $FunctionalProvider<
    StatisticsRepository,
    StatisticsRepository,
    StatisticsRepository> with $Provider<StatisticsRepository> {
  const StatisticsRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'statisticsRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$statisticsRepositoryHash();

  @$internal
  @override
  $ProviderElement<StatisticsRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  StatisticsRepository create(Ref ref) {
    return statisticsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StatisticsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StatisticsRepository>(value),
    );
  }
}

String _$statisticsRepositoryHash() =>
    r'bbf022abad3c47a7b862bd68711dd2125a834888';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
