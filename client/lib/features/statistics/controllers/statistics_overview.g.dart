// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_overview.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(statisticsOverview)
const statisticsOverviewProvider = StatisticsOverviewProvider._();

final class StatisticsOverviewProvider extends $FunctionalProvider<
        AsyncValue<StatisticsOverview>,
        StatisticsOverview,
        FutureOr<StatisticsOverview>>
    with
        $FutureModifier<StatisticsOverview>,
        $FutureProvider<StatisticsOverview> {
  const StatisticsOverviewProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'statisticsOverviewProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$statisticsOverviewHash();

  @$internal
  @override
  $FutureProviderElement<StatisticsOverview> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<StatisticsOverview> create(Ref ref) {
    return statisticsOverview(ref);
  }
}

String _$statisticsOverviewHash() =>
    r'0ffc7cf0ff7d6296a0d627b98b0c5f106e64fd93';

@ProviderFor(statisticsPageData)
const statisticsPageDataProvider = StatisticsPageDataProvider._();

final class StatisticsPageDataProvider extends $FunctionalProvider<
        AsyncValue<(StatisticsOverview, List<Category>)>,
        (StatisticsOverview, List<Category>),
        FutureOr<(StatisticsOverview, List<Category>)>>
    with
        $FutureModifier<(StatisticsOverview, List<Category>)>,
        $FutureProvider<(StatisticsOverview, List<Category>)> {
  const StatisticsPageDataProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'statisticsPageDataProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$statisticsPageDataHash();

  @$internal
  @override
  $FutureProviderElement<(StatisticsOverview, List<Category>)> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<(StatisticsOverview, List<Category>)> create(Ref ref) {
    return statisticsPageData(ref);
  }
}

String _$statisticsPageDataHash() =>
    r'bcb45fb786346a6fffedcc42d32611d47fdbe977';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
