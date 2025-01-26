// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_fixed_costs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonthlyFixedCosts _$MonthlyFixedCostsFromJson(Map<String, dynamic> json) {
  return _MonthlyFixedCosts.fromJson(json);
}

/// @nodoc
mixin _$MonthlyFixedCosts {
  /// The month for which the totals are calculated.
  ///
  /// The rest of the date (day and time) should be ignored.
  DateTime get month => throw _privateConstructorUsedError;
  num get fixedCostTotal => throw _privateConstructorUsedError;
  num get variableCostTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthlyFixedCostsCopyWith<MonthlyFixedCosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyFixedCostsCopyWith<$Res> {
  factory $MonthlyFixedCostsCopyWith(
          MonthlyFixedCosts value, $Res Function(MonthlyFixedCosts) then) =
      _$MonthlyFixedCostsCopyWithImpl<$Res, MonthlyFixedCosts>;
  @useResult
  $Res call({DateTime month, num fixedCostTotal, num variableCostTotal});
}

/// @nodoc
class _$MonthlyFixedCostsCopyWithImpl<$Res, $Val extends MonthlyFixedCosts>
    implements $MonthlyFixedCostsCopyWith<$Res> {
  _$MonthlyFixedCostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? fixedCostTotal = null,
    Object? variableCostTotal = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fixedCostTotal: null == fixedCostTotal
          ? _value.fixedCostTotal
          : fixedCostTotal // ignore: cast_nullable_to_non_nullable
              as num,
      variableCostTotal: null == variableCostTotal
          ? _value.variableCostTotal
          : variableCostTotal // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyFixedCostsImplCopyWith<$Res>
    implements $MonthlyFixedCostsCopyWith<$Res> {
  factory _$$MonthlyFixedCostsImplCopyWith(_$MonthlyFixedCostsImpl value,
          $Res Function(_$MonthlyFixedCostsImpl) then) =
      __$$MonthlyFixedCostsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime month, num fixedCostTotal, num variableCostTotal});
}

/// @nodoc
class __$$MonthlyFixedCostsImplCopyWithImpl<$Res>
    extends _$MonthlyFixedCostsCopyWithImpl<$Res, _$MonthlyFixedCostsImpl>
    implements _$$MonthlyFixedCostsImplCopyWith<$Res> {
  __$$MonthlyFixedCostsImplCopyWithImpl(_$MonthlyFixedCostsImpl _value,
      $Res Function(_$MonthlyFixedCostsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? fixedCostTotal = null,
    Object? variableCostTotal = null,
  }) {
    return _then(_$MonthlyFixedCostsImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fixedCostTotal: null == fixedCostTotal
          ? _value.fixedCostTotal
          : fixedCostTotal // ignore: cast_nullable_to_non_nullable
              as num,
      variableCostTotal: null == variableCostTotal
          ? _value.variableCostTotal
          : variableCostTotal // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyFixedCostsImpl implements _MonthlyFixedCosts {
  _$MonthlyFixedCostsImpl(
      {required this.month,
      required this.fixedCostTotal,
      required this.variableCostTotal});

  factory _$MonthlyFixedCostsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyFixedCostsImplFromJson(json);

  /// The month for which the totals are calculated.
  ///
  /// The rest of the date (day and time) should be ignored.
  @override
  final DateTime month;
  @override
  final num fixedCostTotal;
  @override
  final num variableCostTotal;

  @override
  String toString() {
    return 'MonthlyFixedCosts(month: $month, fixedCostTotal: $fixedCostTotal, variableCostTotal: $variableCostTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyFixedCostsImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.fixedCostTotal, fixedCostTotal) ||
                other.fixedCostTotal == fixedCostTotal) &&
            (identical(other.variableCostTotal, variableCostTotal) ||
                other.variableCostTotal == variableCostTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, month, fixedCostTotal, variableCostTotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyFixedCostsImplCopyWith<_$MonthlyFixedCostsImpl> get copyWith =>
      __$$MonthlyFixedCostsImplCopyWithImpl<_$MonthlyFixedCostsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyFixedCostsImplToJson(
      this,
    );
  }
}

abstract class _MonthlyFixedCosts implements MonthlyFixedCosts {
  factory _MonthlyFixedCosts(
      {required final DateTime month,
      required final num fixedCostTotal,
      required final num variableCostTotal}) = _$MonthlyFixedCostsImpl;

  factory _MonthlyFixedCosts.fromJson(Map<String, dynamic> json) =
      _$MonthlyFixedCostsImpl.fromJson;

  @override

  /// The month for which the totals are calculated.
  ///
  /// The rest of the date (day and time) should be ignored.
  DateTime get month;
  @override
  num get fixedCostTotal;
  @override
  num get variableCostTotal;
  @override
  @JsonKey(ignore: true)
  _$$MonthlyFixedCostsImplCopyWith<_$MonthlyFixedCostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
