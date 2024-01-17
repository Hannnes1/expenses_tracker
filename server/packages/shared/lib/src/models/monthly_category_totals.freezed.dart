// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_category_totals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonthlyCategoryTotals _$MonthlyCategoryTotalsFromJson(
    Map<String, dynamic> json) {
  return _MonthlyCategoryTotals.fromJson(json);
}

/// @nodoc
mixin _$MonthlyCategoryTotals {
  /// The month for which the totals are calculated.
  ///
  /// The rest of the date (day and time) should be ignored.
  DateTime get month => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  num get negativeAmount => throw _privateConstructorUsedError;
  num get positiveAmount => throw _privateConstructorUsedError;
  num get totalAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthlyCategoryTotalsCopyWith<MonthlyCategoryTotals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyCategoryTotalsCopyWith<$Res> {
  factory $MonthlyCategoryTotalsCopyWith(MonthlyCategoryTotals value,
          $Res Function(MonthlyCategoryTotals) then) =
      _$MonthlyCategoryTotalsCopyWithImpl<$Res, MonthlyCategoryTotals>;
  @useResult
  $Res call(
      {DateTime month,
      String categoryId,
      num negativeAmount,
      num positiveAmount,
      num totalAmount});
}

/// @nodoc
class _$MonthlyCategoryTotalsCopyWithImpl<$Res,
        $Val extends MonthlyCategoryTotals>
    implements $MonthlyCategoryTotalsCopyWith<$Res> {
  _$MonthlyCategoryTotalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? categoryId = null,
    Object? negativeAmount = null,
    Object? positiveAmount = null,
    Object? totalAmount = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      negativeAmount: null == negativeAmount
          ? _value.negativeAmount
          : negativeAmount // ignore: cast_nullable_to_non_nullable
              as num,
      positiveAmount: null == positiveAmount
          ? _value.positiveAmount
          : positiveAmount // ignore: cast_nullable_to_non_nullable
              as num,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyCategoryTotalsImplCopyWith<$Res>
    implements $MonthlyCategoryTotalsCopyWith<$Res> {
  factory _$$MonthlyCategoryTotalsImplCopyWith(
          _$MonthlyCategoryTotalsImpl value,
          $Res Function(_$MonthlyCategoryTotalsImpl) then) =
      __$$MonthlyCategoryTotalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime month,
      String categoryId,
      num negativeAmount,
      num positiveAmount,
      num totalAmount});
}

/// @nodoc
class __$$MonthlyCategoryTotalsImplCopyWithImpl<$Res>
    extends _$MonthlyCategoryTotalsCopyWithImpl<$Res,
        _$MonthlyCategoryTotalsImpl>
    implements _$$MonthlyCategoryTotalsImplCopyWith<$Res> {
  __$$MonthlyCategoryTotalsImplCopyWithImpl(_$MonthlyCategoryTotalsImpl _value,
      $Res Function(_$MonthlyCategoryTotalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? categoryId = null,
    Object? negativeAmount = null,
    Object? positiveAmount = null,
    Object? totalAmount = null,
  }) {
    return _then(_$MonthlyCategoryTotalsImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      negativeAmount: null == negativeAmount
          ? _value.negativeAmount
          : negativeAmount // ignore: cast_nullable_to_non_nullable
              as num,
      positiveAmount: null == positiveAmount
          ? _value.positiveAmount
          : positiveAmount // ignore: cast_nullable_to_non_nullable
              as num,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyCategoryTotalsImpl implements _MonthlyCategoryTotals {
  _$MonthlyCategoryTotalsImpl(
      {required this.month,
      required this.categoryId,
      required this.negativeAmount,
      required this.positiveAmount,
      required this.totalAmount});

  factory _$MonthlyCategoryTotalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyCategoryTotalsImplFromJson(json);

  /// The month for which the totals are calculated.
  ///
  /// The rest of the date (day and time) should be ignored.
  @override
  final DateTime month;
  @override
  final String categoryId;
  @override
  final num negativeAmount;
  @override
  final num positiveAmount;
  @override
  final num totalAmount;

  @override
  String toString() {
    return 'MonthlyCategoryTotals(month: $month, categoryId: $categoryId, negativeAmount: $negativeAmount, positiveAmount: $positiveAmount, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyCategoryTotalsImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.negativeAmount, negativeAmount) ||
                other.negativeAmount == negativeAmount) &&
            (identical(other.positiveAmount, positiveAmount) ||
                other.positiveAmount == positiveAmount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, month, categoryId,
      negativeAmount, positiveAmount, totalAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyCategoryTotalsImplCopyWith<_$MonthlyCategoryTotalsImpl>
      get copyWith => __$$MonthlyCategoryTotalsImplCopyWithImpl<
          _$MonthlyCategoryTotalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyCategoryTotalsImplToJson(
      this,
    );
  }
}

abstract class _MonthlyCategoryTotals implements MonthlyCategoryTotals {
  factory _MonthlyCategoryTotals(
      {required final DateTime month,
      required final String categoryId,
      required final num negativeAmount,
      required final num positiveAmount,
      required final num totalAmount}) = _$MonthlyCategoryTotalsImpl;

  factory _MonthlyCategoryTotals.fromJson(Map<String, dynamic> json) =
      _$MonthlyCategoryTotalsImpl.fromJson;

  @override

  /// The month for which the totals are calculated.
  ///
  /// The rest of the date (day and time) should be ignored.
  DateTime get month;
  @override
  String get categoryId;
  @override
  num get negativeAmount;
  @override
  num get positiveAmount;
  @override
  num get totalAmount;
  @override
  @JsonKey(ignore: true)
  _$$MonthlyCategoryTotalsImplCopyWith<_$MonthlyCategoryTotalsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
