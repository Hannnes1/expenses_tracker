// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_overview.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(statisticsOverview)
final statisticsOverviewProvider = StatisticsOverviewProvider._();

final class StatisticsOverviewProvider extends $FunctionalProvider<
        AsyncValue<StatisticsOverview>,
        StatisticsOverview,
        FutureOr<StatisticsOverview>>
    with
        $FutureModifier<StatisticsOverview>,
        $FutureProvider<StatisticsOverview> {
  StatisticsOverviewProvider._()
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
final statisticsPageDataProvider = StatisticsPageDataProvider._();

final class StatisticsPageDataProvider extends $FunctionalProvider<
        AsyncValue<
            (
              StatisticsOverview,
              List<Category>,
            )>,
        (
          StatisticsOverview,
          List<Category>,
        ),
        FutureOr<
            (
              StatisticsOverview,
              List<Category>,
            )>>
    with
        $FutureModifier<
            (
              StatisticsOverview,
              List<Category>,
            )>,
        $FutureProvider<
            (
              StatisticsOverview,
              List<Category>,
            )> {
  StatisticsPageDataProvider._()
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
  $FutureProviderElement<
      (
        StatisticsOverview,
        List<Category>,
      )> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<
      (
        StatisticsOverview,
        List<Category>,
      )> create(Ref ref) {
    return statisticsPageData(ref);
  }
}

String _$statisticsPageDataHash() =>
    r'bcb45fb786346a6fffedcc42d32611d47fdbe977';
