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
  SixMonthAverage get sixMonthAverage => throw _privateConstructorUsedError;
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
      {SixMonthAverage sixMonthAverage,
      List<MonthlyFixedCosts> monthlyFixedCosts,
      List<MonthlyCategoryTotals> monthlyCategoryTotals});

  $SixMonthAverageCopyWith<$Res> get sixMonthAverage;
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
    Object? sixMonthAverage = null,
    Object? monthlyFixedCosts = null,
    Object? monthlyCategoryTotals = null,
  }) {
    return _then(_value.copyWith(
      sixMonthAverage: null == sixMonthAverage
          ? _value.sixMonthAverage
          : sixMonthAverage // ignore: cast_nullable_to_non_nullable
              as SixMonthAverage,
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
  $SixMonthAverageCopyWith<$Res> get sixMonthAverage {
    return $SixMonthAverageCopyWith<$Res>(_value.sixMonthAverage, (value) {
      return _then(_value.copyWith(sixMonthAverage: value) as $Val);
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
      {SixMonthAverage sixMonthAverage,
      List<MonthlyFixedCosts> monthlyFixedCosts,
      List<MonthlyCategoryTotals> monthlyCategoryTotals});

  @override
  $SixMonthAverageCopyWith<$Res> get sixMonthAverage;
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
    Object? sixMonthAverage = null,
    Object? monthlyFixedCosts = null,
    Object? monthlyCategoryTotals = null,
  }) {
    return _then(_$_StatisticsOverview(
      sixMonthAverage: null == sixMonthAverage
          ? _value.sixMonthAverage
          : sixMonthAverage // ignore: cast_nullable_to_non_nullable
              as SixMonthAverage,
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
      {required this.sixMonthAverage,
      required final List<MonthlyFixedCosts> monthlyFixedCosts,
      required final List<MonthlyCategoryTotals> monthlyCategoryTotals})
      : _monthlyFixedCosts = monthlyFixedCosts,
        _monthlyCategoryTotals = monthlyCategoryTotals;

  factory _$_StatisticsOverview.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsOverviewFromJson(json);

  @override
  final SixMonthAverage sixMonthAverage;
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
    return 'StatisticsOverview(sixMonthAverage: $sixMonthAverage, monthlyFixedCosts: $monthlyFixedCosts, monthlyCategoryTotals: $monthlyCategoryTotals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatisticsOverview &&
            (identical(other.sixMonthAverage, sixMonthAverage) ||
                other.sixMonthAverage == sixMonthAverage) &&
            const DeepCollectionEquality()
                .equals(other._monthlyFixedCosts, _monthlyFixedCosts) &&
            const DeepCollectionEquality()
                .equals(other._monthlyCategoryTotals, _monthlyCategoryTotals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sixMonthAverage,
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
          {required final SixMonthAverage sixMonthAverage,
          required final List<MonthlyFixedCosts> monthlyFixedCosts,
          required final List<MonthlyCategoryTotals> monthlyCategoryTotals}) =
      _$_StatisticsOverview;

  factory _StatisticsOverview.fromJson(Map<String, dynamic> json) =
      _$_StatisticsOverview.fromJson;

  @override
  SixMonthAverage get sixMonthAverage;
  @override
  List<MonthlyFixedCosts> get monthlyFixedCosts;
  @override
  List<MonthlyCategoryTotals> get monthlyCategoryTotals;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsOverviewCopyWith<_$_StatisticsOverview> get copyWith =>
      throw _privateConstructorUsedError;
}
