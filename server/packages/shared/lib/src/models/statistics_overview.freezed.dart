// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsOverview _$StatisticsOverviewFromJson(Map<String, dynamic> json) {
  return _StatisticsOverview.fromJson(json);
}

/// @nodoc
mixin _$StatisticsOverview {
  YearMonthlyAverage get yearMonthlyAverage =>
      throw _privateConstructorUsedError;
  List<MonthlyFixedCosts> get monthlyFixedCosts =>
      throw _privateConstructorUsedError;
  List<MonthlyCategoryTotals> get monthlyCategoryTotals =>
      throw _privateConstructorUsedError;
  Map<String, num> get last12MonthsCategoryAverage =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsOverviewCopyWith<StatisticsOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsOverviewCopyWith<$Res> {
  factory $StatisticsOverviewCopyWith(
          StatisticsOverview value, $Res Function(StatisticsOverview) then) =
      _$StatisticsOverviewCopyWithImpl<$Res, StatisticsOverview>;
  @useResult
  $Res call(
      {YearMonthlyAverage yearMonthlyAverage,
      List<MonthlyFixedCosts> monthlyFixedCosts,
      List<MonthlyCategoryTotals> monthlyCategoryTotals,
      Map<String, num> last12MonthsCategoryAverage});

  $YearMonthlyAverageCopyWith<$Res> get yearMonthlyAverage;
}

/// @nodoc
class _$StatisticsOverviewCopyWithImpl<$Res, $Val extends StatisticsOverview>
    implements $StatisticsOverviewCopyWith<$Res> {
  _$StatisticsOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonthlyAverage = null,
    Object? monthlyFixedCosts = null,
    Object? monthlyCategoryTotals = null,
    Object? last12MonthsCategoryAverage = null,
  }) {
    return _then(_value.copyWith(
      yearMonthlyAverage: null == yearMonthlyAverage
          ? _value.yearMonthlyAverage
          : yearMonthlyAverage // ignore: cast_nullable_to_non_nullable
              as YearMonthlyAverage,
      monthlyFixedCosts: null == monthlyFixedCosts
          ? _value.monthlyFixedCosts
          : monthlyFixedCosts // ignore: cast_nullable_to_non_nullable
              as List<MonthlyFixedCosts>,
      monthlyCategoryTotals: null == monthlyCategoryTotals
          ? _value.monthlyCategoryTotals
          : monthlyCategoryTotals // ignore: cast_nullable_to_non_nullable
              as List<MonthlyCategoryTotals>,
      last12MonthsCategoryAverage: null == last12MonthsCategoryAverage
          ? _value.last12MonthsCategoryAverage
          : last12MonthsCategoryAverage // ignore: cast_nullable_to_non_nullable
              as Map<String, num>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YearMonthlyAverageCopyWith<$Res> get yearMonthlyAverage {
    return $YearMonthlyAverageCopyWith<$Res>(_value.yearMonthlyAverage,
        (value) {
      return _then(_value.copyWith(yearMonthlyAverage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatisticsOverviewImplCopyWith<$Res>
    implements $StatisticsOverviewCopyWith<$Res> {
  factory _$$StatisticsOverviewImplCopyWith(_$StatisticsOverviewImpl value,
          $Res Function(_$StatisticsOverviewImpl) then) =
      __$$StatisticsOverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {YearMonthlyAverage yearMonthlyAverage,
      List<MonthlyFixedCosts> monthlyFixedCosts,
      List<MonthlyCategoryTotals> monthlyCategoryTotals,
      Map<String, num> last12MonthsCategoryAverage});

  @override
  $YearMonthlyAverageCopyWith<$Res> get yearMonthlyAverage;
}

/// @nodoc
class __$$StatisticsOverviewImplCopyWithImpl<$Res>
    extends _$StatisticsOverviewCopyWithImpl<$Res, _$StatisticsOverviewImpl>
    implements _$$StatisticsOverviewImplCopyWith<$Res> {
  __$$StatisticsOverviewImplCopyWithImpl(_$StatisticsOverviewImpl _value,
      $Res Function(_$StatisticsOverviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonthlyAverage = null,
    Object? monthlyFixedCosts = null,
    Object? monthlyCategoryTotals = null,
    Object? last12MonthsCategoryAverage = null,
  }) {
    return _then(_$StatisticsOverviewImpl(
      yearMonthlyAverage: null == yearMonthlyAverage
          ? _value.yearMonthlyAverage
          : yearMonthlyAverage // ignore: cast_nullable_to_non_nullable
              as YearMonthlyAverage,
      monthlyFixedCosts: null == monthlyFixedCosts
          ? _value._monthlyFixedCosts
          : monthlyFixedCosts // ignore: cast_nullable_to_non_nullable
              as List<MonthlyFixedCosts>,
      monthlyCategoryTotals: null == monthlyCategoryTotals
          ? _value._monthlyCategoryTotals
          : monthlyCategoryTotals // ignore: cast_nullable_to_non_nullable
              as List<MonthlyCategoryTotals>,
      last12MonthsCategoryAverage: null == last12MonthsCategoryAverage
          ? _value._last12MonthsCategoryAverage
          : last12MonthsCategoryAverage // ignore: cast_nullable_to_non_nullable
              as Map<String, num>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsOverviewImpl implements _StatisticsOverview {
  _$StatisticsOverviewImpl(
      {required this.yearMonthlyAverage,
      required final List<MonthlyFixedCosts> monthlyFixedCosts,
      required final List<MonthlyCategoryTotals> monthlyCategoryTotals,
      required final Map<String, num> last12MonthsCategoryAverage})
      : _monthlyFixedCosts = monthlyFixedCosts,
        _monthlyCategoryTotals = monthlyCategoryTotals,
        _last12MonthsCategoryAverage = last12MonthsCategoryAverage;

  factory _$StatisticsOverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsOverviewImplFromJson(json);

  @override
  final YearMonthlyAverage yearMonthlyAverage;
  final List<MonthlyFixedCosts> _monthlyFixedCosts;
  @override
  List<MonthlyFixedCosts> get monthlyFixedCosts {
    if (_monthlyFixedCosts is EqualUnmodifiableListView)
      return _monthlyFixedCosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyFixedCosts);
  }

  final List<MonthlyCategoryTotals> _monthlyCategoryTotals;
  @override
  List<MonthlyCategoryTotals> get monthlyCategoryTotals {
    if (_monthlyCategoryTotals is EqualUnmodifiableListView)
      return _monthlyCategoryTotals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyCategoryTotals);
  }

  final Map<String, num> _last12MonthsCategoryAverage;
  @override
  Map<String, num> get last12MonthsCategoryAverage {
    if (_last12MonthsCategoryAverage is EqualUnmodifiableMapView)
      return _last12MonthsCategoryAverage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_last12MonthsCategoryAverage);
  }

  @override
  String toString() {
    return 'StatisticsOverview(yearMonthlyAverage: $yearMonthlyAverage, monthlyFixedCosts: $monthlyFixedCosts, monthlyCategoryTotals: $monthlyCategoryTotals, last12MonthsCategoryAverage: $last12MonthsCategoryAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsOverviewImpl &&
            (identical(other.yearMonthlyAverage, yearMonthlyAverage) ||
                other.yearMonthlyAverage == yearMonthlyAverage) &&
            const DeepCollectionEquality()
                .equals(other._monthlyFixedCosts, _monthlyFixedCosts) &&
            const DeepCollectionEquality()
                .equals(other._monthlyCategoryTotals, _monthlyCategoryTotals) &&
            const DeepCollectionEquality().equals(
                other._last12MonthsCategoryAverage,
                _last12MonthsCategoryAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      yearMonthlyAverage,
      const DeepCollectionEquality().hash(_monthlyFixedCosts),
      const DeepCollectionEquality().hash(_monthlyCategoryTotals),
      const DeepCollectionEquality().hash(_last12MonthsCategoryAverage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsOverviewImplCopyWith<_$StatisticsOverviewImpl> get copyWith =>
      __$$StatisticsOverviewImplCopyWithImpl<_$StatisticsOverviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsOverviewImplToJson(
      this,
    );
  }
}

abstract class _StatisticsOverview implements StatisticsOverview {
  factory _StatisticsOverview(
          {required final YearMonthlyAverage yearMonthlyAverage,
          required final List<MonthlyFixedCosts> monthlyFixedCosts,
          required final List<MonthlyCategoryTotals> monthlyCategoryTotals,
          required final Map<String, num> last12MonthsCategoryAverage}) =
      _$StatisticsOverviewImpl;

  factory _StatisticsOverview.fromJson(Map<String, dynamic> json) =
      _$StatisticsOverviewImpl.fromJson;

  @override
  YearMonthlyAverage get yearMonthlyAverage;
  @override
  List<MonthlyFixedCosts> get monthlyFixedCosts;
  @override
  List<MonthlyCategoryTotals> get monthlyCategoryTotals;
  @override
  Map<String, num> get last12MonthsCategoryAverage;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsOverviewImplCopyWith<_$StatisticsOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
