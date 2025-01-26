// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'year_monthly_average.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YearMonthlyAverage _$YearMonthlyAverageFromJson(Map<String, dynamic> json) {
  return _YearMonthlyAverage.fromJson(json);
}

/// @nodoc
mixin _$YearMonthlyAverage {
  num get averageFixedCost => throw _privateConstructorUsedError;
  num get averageVariableCost => throw _privateConstructorUsedError;

  /// Serializes this YearMonthlyAverage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YearMonthlyAverage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YearMonthlyAverageCopyWith<YearMonthlyAverage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearMonthlyAverageCopyWith<$Res> {
  factory $YearMonthlyAverageCopyWith(
          YearMonthlyAverage value, $Res Function(YearMonthlyAverage) then) =
      _$YearMonthlyAverageCopyWithImpl<$Res, YearMonthlyAverage>;
  @useResult
  $Res call({num averageFixedCost, num averageVariableCost});
}

/// @nodoc
class _$YearMonthlyAverageCopyWithImpl<$Res, $Val extends YearMonthlyAverage>
    implements $YearMonthlyAverageCopyWith<$Res> {
  _$YearMonthlyAverageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YearMonthlyAverage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageFixedCost = null,
    Object? averageVariableCost = null,
  }) {
    return _then(_value.copyWith(
      averageFixedCost: null == averageFixedCost
          ? _value.averageFixedCost
          : averageFixedCost // ignore: cast_nullable_to_non_nullable
              as num,
      averageVariableCost: null == averageVariableCost
          ? _value.averageVariableCost
          : averageVariableCost // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YearMonthlyAverageImplCopyWith<$Res>
    implements $YearMonthlyAverageCopyWith<$Res> {
  factory _$$YearMonthlyAverageImplCopyWith(_$YearMonthlyAverageImpl value,
          $Res Function(_$YearMonthlyAverageImpl) then) =
      __$$YearMonthlyAverageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num averageFixedCost, num averageVariableCost});
}

/// @nodoc
class __$$YearMonthlyAverageImplCopyWithImpl<$Res>
    extends _$YearMonthlyAverageCopyWithImpl<$Res, _$YearMonthlyAverageImpl>
    implements _$$YearMonthlyAverageImplCopyWith<$Res> {
  __$$YearMonthlyAverageImplCopyWithImpl(_$YearMonthlyAverageImpl _value,
      $Res Function(_$YearMonthlyAverageImpl) _then)
      : super(_value, _then);

  /// Create a copy of YearMonthlyAverage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageFixedCost = null,
    Object? averageVariableCost = null,
  }) {
    return _then(_$YearMonthlyAverageImpl(
      averageFixedCost: null == averageFixedCost
          ? _value.averageFixedCost
          : averageFixedCost // ignore: cast_nullable_to_non_nullable
              as num,
      averageVariableCost: null == averageVariableCost
          ? _value.averageVariableCost
          : averageVariableCost // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YearMonthlyAverageImpl extends _YearMonthlyAverage {
  _$YearMonthlyAverageImpl(
      {required this.averageFixedCost, required this.averageVariableCost})
      : super._();

  factory _$YearMonthlyAverageImpl.fromJson(Map<String, dynamic> json) =>
      _$$YearMonthlyAverageImplFromJson(json);

  @override
  final num averageFixedCost;
  @override
  final num averageVariableCost;

  @override
  String toString() {
    return 'YearMonthlyAverage(averageFixedCost: $averageFixedCost, averageVariableCost: $averageVariableCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearMonthlyAverageImpl &&
            (identical(other.averageFixedCost, averageFixedCost) ||
                other.averageFixedCost == averageFixedCost) &&
            (identical(other.averageVariableCost, averageVariableCost) ||
                other.averageVariableCost == averageVariableCost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, averageFixedCost, averageVariableCost);

  /// Create a copy of YearMonthlyAverage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YearMonthlyAverageImplCopyWith<_$YearMonthlyAverageImpl> get copyWith =>
      __$$YearMonthlyAverageImplCopyWithImpl<_$YearMonthlyAverageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YearMonthlyAverageImplToJson(
      this,
    );
  }
}

abstract class _YearMonthlyAverage extends YearMonthlyAverage {
  factory _YearMonthlyAverage(
      {required final num averageFixedCost,
      required final num averageVariableCost}) = _$YearMonthlyAverageImpl;
  _YearMonthlyAverage._() : super._();

  factory _YearMonthlyAverage.fromJson(Map<String, dynamic> json) =
      _$YearMonthlyAverageImpl.fromJson;

  @override
  num get averageFixedCost;
  @override
  num get averageVariableCost;

  /// Create a copy of YearMonthlyAverage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YearMonthlyAverageImplCopyWith<_$YearMonthlyAverageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
