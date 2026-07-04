// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'year_monthly_average.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$YearMonthlyAverage {
  num get averageFixedCost;
  num get averageVariableCost;

  /// Create a copy of YearMonthlyAverage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $YearMonthlyAverageCopyWith<YearMonthlyAverage> get copyWith =>
      _$YearMonthlyAverageCopyWithImpl<YearMonthlyAverage>(
          this as YearMonthlyAverage, _$identity);

  /// Serializes this YearMonthlyAverage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is YearMonthlyAverage &&
            (identical(other.averageFixedCost, averageFixedCost) ||
                other.averageFixedCost == averageFixedCost) &&
            (identical(other.averageVariableCost, averageVariableCost) ||
                other.averageVariableCost == averageVariableCost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, averageFixedCost, averageVariableCost);

  @override
  String toString() {
    return 'YearMonthlyAverage(averageFixedCost: $averageFixedCost, averageVariableCost: $averageVariableCost)';
  }
}

/// @nodoc
abstract mixin class $YearMonthlyAverageCopyWith<$Res> {
  factory $YearMonthlyAverageCopyWith(
          YearMonthlyAverage value, $Res Function(YearMonthlyAverage) _then) =
      _$YearMonthlyAverageCopyWithImpl;
  @useResult
  $Res call({num averageFixedCost, num averageVariableCost});
}

/// @nodoc
class _$YearMonthlyAverageCopyWithImpl<$Res>
    implements $YearMonthlyAverageCopyWith<$Res> {
  _$YearMonthlyAverageCopyWithImpl(this._self, this._then);

  final YearMonthlyAverage _self;
  final $Res Function(YearMonthlyAverage) _then;

  /// Create a copy of YearMonthlyAverage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageFixedCost = null,
    Object? averageVariableCost = null,
  }) {
    return _then(_self.copyWith(
      averageFixedCost: null == averageFixedCost
          ? _self.averageFixedCost
          : averageFixedCost // ignore: cast_nullable_to_non_nullable
              as num,
      averageVariableCost: null == averageVariableCost
          ? _self.averageVariableCost
          : averageVariableCost // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// Adds pattern-matching-related methods to [YearMonthlyAverage].
extension YearMonthlyAveragePatterns on YearMonthlyAverage {
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
    TResult Function(_YearMonthlyAverage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _YearMonthlyAverage() when $default != null:
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
    TResult Function(_YearMonthlyAverage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YearMonthlyAverage():
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
    TResult? Function(_YearMonthlyAverage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YearMonthlyAverage() when $default != null:
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
    TResult Function(num averageFixedCost, num averageVariableCost)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _YearMonthlyAverage() when $default != null:
        return $default(_that.averageFixedCost, _that.averageVariableCost);
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
    TResult Function(num averageFixedCost, num averageVariableCost) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YearMonthlyAverage():
        return $default(_that.averageFixedCost, _that.averageVariableCost);
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
    TResult? Function(num averageFixedCost, num averageVariableCost)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YearMonthlyAverage() when $default != null:
        return $default(_that.averageFixedCost, _that.averageVariableCost);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _YearMonthlyAverage extends YearMonthlyAverage {
  _YearMonthlyAverage(
      {required this.averageFixedCost, required this.averageVariableCost})
      : super._();
  factory _YearMonthlyAverage.fromJson(Map<String, dynamic> json) =>
      _$YearMonthlyAverageFromJson(json);

  @override
  final num averageFixedCost;
  @override
  final num averageVariableCost;

  /// Create a copy of YearMonthlyAverage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$YearMonthlyAverageCopyWith<_YearMonthlyAverage> get copyWith =>
      __$YearMonthlyAverageCopyWithImpl<_YearMonthlyAverage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$YearMonthlyAverageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _YearMonthlyAverage &&
            (identical(other.averageFixedCost, averageFixedCost) ||
                other.averageFixedCost == averageFixedCost) &&
            (identical(other.averageVariableCost, averageVariableCost) ||
                other.averageVariableCost == averageVariableCost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, averageFixedCost, averageVariableCost);

  @override
  String toString() {
    return 'YearMonthlyAverage(averageFixedCost: $averageFixedCost, averageVariableCost: $averageVariableCost)';
  }
}

/// @nodoc
abstract mixin class _$YearMonthlyAverageCopyWith<$Res>
    implements $YearMonthlyAverageCopyWith<$Res> {
  factory _$YearMonthlyAverageCopyWith(
          _YearMonthlyAverage value, $Res Function(_YearMonthlyAverage) _then) =
      __$YearMonthlyAverageCopyWithImpl;
  @override
  @useResult
  $Res call({num averageFixedCost, num averageVariableCost});
}

/// @nodoc
class __$YearMonthlyAverageCopyWithImpl<$Res>
    implements _$YearMonthlyAverageCopyWith<$Res> {
  __$YearMonthlyAverageCopyWithImpl(this._self, this._then);

  final _YearMonthlyAverage _self;
  final $Res Function(_YearMonthlyAverage) _then;

  /// Create a copy of YearMonthlyAverage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? averageFixedCost = null,
    Object? averageVariableCost = null,
  }) {
    return _then(_YearMonthlyAverage(
      averageFixedCost: null == averageFixedCost
          ? _self.averageFixedCost
          : averageFixedCost // ignore: cast_nullable_to_non_nullable
              as num,
      averageVariableCost: null == averageVariableCost
          ? _self.averageVariableCost
          : averageVariableCost // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

// dart format on
