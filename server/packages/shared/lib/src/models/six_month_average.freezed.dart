// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'six_month_average.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SixMonthAverage _$SixMonthAverageFromJson(Map<String, dynamic> json) {
  return _SixMonthAverage.fromJson(json);
}

/// @nodoc
mixin _$SixMonthAverage {
  num get averageFixedCost => throw _privateConstructorUsedError;
  num get averageVariableCost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SixMonthAverageCopyWith<SixMonthAverage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SixMonthAverageCopyWith<$Res> {
  factory $SixMonthAverageCopyWith(
          SixMonthAverage value, $Res Function(SixMonthAverage) then) =
      _$SixMonthAverageCopyWithImpl<$Res, SixMonthAverage>;
  @useResult
  $Res call({num averageFixedCost, num averageVariableCost});
}

/// @nodoc
class _$SixMonthAverageCopyWithImpl<$Res, $Val extends SixMonthAverage>
    implements $SixMonthAverageCopyWith<$Res> {
  _$SixMonthAverageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$_SixMonthAverageCopyWith<$Res>
    implements $SixMonthAverageCopyWith<$Res> {
  factory _$$_SixMonthAverageCopyWith(
          _$_SixMonthAverage value, $Res Function(_$_SixMonthAverage) then) =
      __$$_SixMonthAverageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num averageFixedCost, num averageVariableCost});
}

/// @nodoc
class __$$_SixMonthAverageCopyWithImpl<$Res>
    extends _$SixMonthAverageCopyWithImpl<$Res, _$_SixMonthAverage>
    implements _$$_SixMonthAverageCopyWith<$Res> {
  __$$_SixMonthAverageCopyWithImpl(
      _$_SixMonthAverage _value, $Res Function(_$_SixMonthAverage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageFixedCost = null,
    Object? averageVariableCost = null,
  }) {
    return _then(_$_SixMonthAverage(
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
class _$_SixMonthAverage implements _SixMonthAverage {
  _$_SixMonthAverage(
      {required this.averageFixedCost, required this.averageVariableCost});

  factory _$_SixMonthAverage.fromJson(Map<String, dynamic> json) =>
      _$$_SixMonthAverageFromJson(json);

  @override
  final num averageFixedCost;
  @override
  final num averageVariableCost;

  @override
  String toString() {
    return 'SixMonthAverage(averageFixedCost: $averageFixedCost, averageVariableCost: $averageVariableCost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SixMonthAverage &&
            (identical(other.averageFixedCost, averageFixedCost) ||
                other.averageFixedCost == averageFixedCost) &&
            (identical(other.averageVariableCost, averageVariableCost) ||
                other.averageVariableCost == averageVariableCost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, averageFixedCost, averageVariableCost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SixMonthAverageCopyWith<_$_SixMonthAverage> get copyWith =>
      __$$_SixMonthAverageCopyWithImpl<_$_SixMonthAverage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SixMonthAverageToJson(
      this,
    );
  }
}

abstract class _SixMonthAverage implements SixMonthAverage {
  factory _SixMonthAverage(
      {required final num averageFixedCost,
      required final num averageVariableCost}) = _$_SixMonthAverage;

  factory _SixMonthAverage.fromJson(Map<String, dynamic> json) =
      _$_SixMonthAverage.fromJson;

  @override
  num get averageFixedCost;
  @override
  num get averageVariableCost;
  @override
  @JsonKey(ignore: true)
  _$$_SixMonthAverageCopyWith<_$_SixMonthAverage> get copyWith =>
      throw _privateConstructorUsedError;
}
