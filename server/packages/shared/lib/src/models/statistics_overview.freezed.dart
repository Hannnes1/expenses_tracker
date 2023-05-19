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
      List<MonthlyCategoryTotals> monthlyCategoryTotals});

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
abstract class _$$_StatisticsOverviewCopyWith<$Res>
    implements $StatisticsOverviewCopyWith<$Res> {
  factory _$$_StatisticsOverviewCopyWith(_$_StatisticsOverview value,
          $Res Function(_$_StatisticsOverview) then) =
      __$$_StatisticsOverviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {YearMonthlyAverage yearMonthlyAverage,
      List<MonthlyFixedCosts> monthlyFixedCosts,
      List<MonthlyCategoryTotals> monthlyCategoryTotals});

  @override
  $YearMonthlyAverageCopyWith<$Res> get yearMonthlyAverage;
}

/// @nodoc
class __$$_StatisticsOverviewCopyWithImpl<$Res>
    extends _$StatisticsOverviewCopyWithImpl<$Res, _$_StatisticsOverview>
    implements _$$_StatisticsOverviewCopyWith<$Res> {
  __$$_StatisticsOverviewCopyWithImpl(
      _$_StatisticsOverview _value, $Res Function(_$_StatisticsOverview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonthlyAverage = null,
    Object? monthlyFixedCosts = null,
    Object? monthlyCategoryTotals = null,
  }) {
    return _then(_$_StatisticsOverview(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatisticsOverview implements _StatisticsOverview {
  _$_StatisticsOverview(
      {required this.yearMonthlyAverage,
      required final List<MonthlyFixedCosts> monthlyFixedCosts,
      required final List<MonthlyCategoryTotals> monthlyCategoryTotals})
      : _monthlyFixedCosts = monthlyFixedCosts,
        _monthlyCategoryTotals = monthlyCategoryTotals;

  factory _$_StatisticsOverview.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsOverviewFromJson(json);

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

  @override
  String toString() {
    return 'StatisticsOverview(yearMonthlyAverage: $yearMonthlyAverage, monthlyFixedCosts: $monthlyFixedCosts, monthlyCategoryTotals: $monthlyCategoryTotals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatisticsOverview &&
            (identical(other.yearMonthlyAverage, yearMonthlyAverage) ||
                other.yearMonthlyAverage == yearMonthlyAverage) &&
            const DeepCollectionEquality()
                .equals(other._monthlyFixedCosts, _monthlyFixedCosts) &&
            const DeepCollectionEquality()
                .equals(other._monthlyCategoryTotals, _monthlyCategoryTotals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      yearMonthlyAverage,
      const DeepCollectionEquality().hash(_monthlyFixedCosts),
      const DeepCollectionEquality().hash(_monthlyCategoryTotals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticsOverviewCopyWith<_$_StatisticsOverview> get copyWith =>
      __$$_StatisticsOverviewCopyWithImpl<_$_StatisticsOverview>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticsOverviewToJson(
      this,
    );
  }
}

abstract class _StatisticsOverview implements StatisticsOverview {
  factory _StatisticsOverview(
          {required final YearMonthlyAverage yearMonthlyAverage,
          required final List<MonthlyFixedCosts> monthlyFixedCosts,
          required final List<MonthlyCategoryTotals> monthlyCategoryTotals}) =
      _$_StatisticsOverview;

  factory _StatisticsOverview.fromJson(Map<String, dynamic> json) =
      _$_StatisticsOverview.fromJson;

  @override
  YearMonthlyAverage get yearMonthlyAverage;
  @override
  List<MonthlyFixedCosts> get monthlyFixedCosts;
  @override
  List<MonthlyCategoryTotals> get monthlyCategoryTotals;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsOverviewCopyWith<_$_StatisticsOverview> get copyWith =>
      throw _privateConstructorUsedError;
}
