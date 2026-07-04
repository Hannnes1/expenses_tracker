// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_category_totals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlyCategoryTotals {
  /// The month for which the totals are calculated.
  ///
  /// The rest of the date (day and time) should be ignored.
  DateTime get month;
  String get categoryId;
  num get negativeAmount;
  num get positiveAmount;
  num get totalAmount;

  /// Create a copy of MonthlyCategoryTotals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonthlyCategoryTotalsCopyWith<MonthlyCategoryTotals> get copyWith =>
      _$MonthlyCategoryTotalsCopyWithImpl<MonthlyCategoryTotals>(
          this as MonthlyCategoryTotals, _$identity);

  /// Serializes this MonthlyCategoryTotals to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonthlyCategoryTotals &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, month, categoryId,
      negativeAmount, positiveAmount, totalAmount);

  @override
  String toString() {
    return 'MonthlyCategoryTotals(month: $month, categoryId: $categoryId, negativeAmount: $negativeAmount, positiveAmount: $positiveAmount, totalAmount: $totalAmount)';
  }
}

/// @nodoc
abstract mixin class $MonthlyCategoryTotalsCopyWith<$Res> {
  factory $MonthlyCategoryTotalsCopyWith(MonthlyCategoryTotals value,
          $Res Function(MonthlyCategoryTotals) _then) =
      _$MonthlyCategoryTotalsCopyWithImpl;
  @useResult
  $Res call(
      {DateTime month,
      String categoryId,
      num negativeAmount,
      num positiveAmount,
      num totalAmount});
}

/// @nodoc
class _$MonthlyCategoryTotalsCopyWithImpl<$Res>
    implements $MonthlyCategoryTotalsCopyWith<$Res> {
  _$MonthlyCategoryTotalsCopyWithImpl(this._self, this._then);

  final MonthlyCategoryTotals _self;
  final $Res Function(MonthlyCategoryTotals) _then;

  /// Create a copy of MonthlyCategoryTotals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? categoryId = null,
    Object? negativeAmount = null,
    Object? positiveAmount = null,
    Object? totalAmount = null,
  }) {
    return _then(_self.copyWith(
      month: null == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      negativeAmount: null == negativeAmount
          ? _self.negativeAmount
          : negativeAmount // ignore: cast_nullable_to_non_nullable
              as num,
      positiveAmount: null == positiveAmount
          ? _self.positiveAmount
          : positiveAmount // ignore: cast_nullable_to_non_nullable
              as num,
      totalAmount: null == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// Adds pattern-matching-related methods to [MonthlyCategoryTotals].
extension MonthlyCategoryTotalsPatterns on MonthlyCategoryTotals {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MonthlyCategoryTotals value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MonthlyCategoryTotals() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MonthlyCategoryTotals value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MonthlyCategoryTotals():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MonthlyCategoryTotals value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MonthlyCategoryTotals() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DateTime month, String categoryId, num negativeAmount,
            num positiveAmount, num totalAmount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MonthlyCategoryTotals() when $default != null:
        return $default(_that.month, _that.categoryId, _that.negativeAmount,
            _that.positiveAmount, _that.totalAmount);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DateTime month, String categoryId, num negativeAmount,
            num positiveAmount, num totalAmount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MonthlyCategoryTotals():
        return $default(_that.month, _that.categoryId, _that.negativeAmount,
            _that.positiveAmount, _that.totalAmount);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DateTime month, String categoryId, num negativeAmount,
            num positiveAmount, num totalAmount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MonthlyCategoryTotals() when $default != null:
        return $default(_that.month, _that.categoryId, _that.negativeAmount,
            _that.positiveAmount, _that.totalAmount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MonthlyCategoryTotals implements MonthlyCategoryTotals {
  _MonthlyCategoryTotals(
      {required this.month,
      required this.categoryId,
      required this.negativeAmount,
      required this.positiveAmount,
      required this.totalAmount});
  factory _MonthlyCategoryTotals.fromJson(Map<String, dynamic> json) =>
      _$MonthlyCategoryTotalsFromJson(json);

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

  /// Create a copy of MonthlyCategoryTotals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonthlyCategoryTotalsCopyWith<_MonthlyCategoryTotals> get copyWith =>
      __$MonthlyCategoryTotalsCopyWithImpl<_MonthlyCategoryTotals>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MonthlyCategoryTotalsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonthlyCategoryTotals &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, month, categoryId,
      negativeAmount, positiveAmount, totalAmount);

  @override
  String toString() {
    return 'MonthlyCategoryTotals(month: $month, categoryId: $categoryId, negativeAmount: $negativeAmount, positiveAmount: $positiveAmount, totalAmount: $totalAmount)';
  }
}

/// @nodoc
abstract mixin class _$MonthlyCategoryTotalsCopyWith<$Res>
    implements $MonthlyCategoryTotalsCopyWith<$Res> {
  factory _$MonthlyCategoryTotalsCopyWith(_MonthlyCategoryTotals value,
          $Res Function(_MonthlyCategoryTotals) _then) =
      __$MonthlyCategoryTotalsCopyWithImpl;
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
class __$MonthlyCategoryTotalsCopyWithImpl<$Res>
    implements _$MonthlyCategoryTotalsCopyWith<$Res> {
  __$MonthlyCategoryTotalsCopyWithImpl(this._self, this._then);

  final _MonthlyCategoryTotals _self;
  final $Res Function(_MonthlyCategoryTotals) _then;

  /// Create a copy of MonthlyCategoryTotals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? month = null,
    Object? categoryId = null,
    Object? negativeAmount = null,
    Object? positiveAmount = null,
    Object? totalAmount = null,
  }) {
    return _then(_MonthlyCategoryTotals(
      month: null == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      negativeAmount: null == negativeAmount
          ? _self.negativeAmount
          : negativeAmount // ignore: cast_nullable_to_non_nullable
              as num,
      positiveAmount: null == positiveAmount
          ? _self.positiveAmount
          : positiveAmount // ignore: cast_nullable_to_non_nullable
              as num,
      totalAmount: null == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

// dart format on
