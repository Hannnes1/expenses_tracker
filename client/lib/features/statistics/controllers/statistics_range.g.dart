// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_range.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StatisticsRangeNotifier)
final statisticsRangeProvider = StatisticsRangeNotifierProvider._();

final class StatisticsRangeNotifierProvider
    extends $NotifierProvider<StatisticsRangeNotifier, StatisticsRange> {
  StatisticsRangeNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'statisticsRangeProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$statisticsRangeNotifierHash();

  @$internal
  @override
  StatisticsRangeNotifier create() => StatisticsRangeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StatisticsRange value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StatisticsRange>(value),
    );
  }
}

String _$statisticsRangeNotifierHash() =>
    r'd4b1fd5b36e51bb82b595f64abcfec67f9ad313a';

abstract class _$StatisticsRangeNotifier extends $Notifier<StatisticsRange> {
  StatisticsRange build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<StatisticsRange, StatisticsRange>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<StatisticsRange, StatisticsRange>,
        StatisticsRange,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
