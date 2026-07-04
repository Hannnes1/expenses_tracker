// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatisticsOverview {
  YearMonthlyAverage get yearMonthlyAverage;
  YearMonthlyAverage get previousYearMonthlyAverage;
  List<MonthlyCategoryTotals> get monthlyCategoryTotals;
  Map<String, num> get categoryAverage;

  /// Create a copy of StatisticsOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StatisticsOverviewCopyWith<StatisticsOverview> get copyWith =>
      _$StatisticsOverviewCopyWithImpl<StatisticsOverview>(
          this as StatisticsOverview, _$identity);

  /// Serializes this StatisticsOverview to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StatisticsOverview &&
            (identical(other.yearMonthlyAverage, yearMonthlyAverage) ||
                other.yearMonthlyAverage == yearMonthlyAverage) &&
            (identical(other.previousYearMonthlyAverage,
                    previousYearMonthlyAverage) ||
                other.previousYearMonthlyAverage ==
                    previousYearMonthlyAverage) &&
            const DeepCollectionEquality()
                .equals(other.monthlyCategoryTotals, monthlyCategoryTotals) &&
            const DeepCollectionEquality()
                .equals(other.categoryAverage, categoryAverage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      yearMonthlyAverage,
      previousYearMonthlyAverage,
      const DeepCollectionEquality().hash(monthlyCategoryTotals),
      const DeepCollectionEquality().hash(categoryAverage));

  @override
  String toString() {
    return 'StatisticsOverview(yearMonthlyAverage: $yearMonthlyAverage, previousYearMonthlyAverage: $previousYearMonthlyAverage, monthlyCategoryTotals: $monthlyCategoryTotals, categoryAverage: $categoryAverage)';
  }
}

/// @nodoc
abstract mixin class $StatisticsOverviewCopyWith<$Res> {
  factory $StatisticsOverviewCopyWith(
          StatisticsOverview value, $Res Function(StatisticsOverview) _then) =
      _$StatisticsOverviewCopyWithImpl;
  @useResult
  $Res call(
      {YearMonthlyAverage yearMonthlyAverage,
      YearMonthlyAverage previousYearMonthlyAverage,
      List<MonthlyCategoryTotals> monthlyCategoryTotals,
      Map<String, num> categoryAverage});

  $YearMonthlyAverageCopyWith<$Res> get yearMonthlyAverage;
  $YearMonthlyAverageCopyWith<$Res> get previousYearMonthlyAverage;
}

/// @nodoc
class _$StatisticsOverviewCopyWithImpl<$Res>
    implements $StatisticsOverviewCopyWith<$Res> {
  _$StatisticsOverviewCopyWithImpl(this._self, this._then);

  final StatisticsOverview _self;
  final $Res Function(StatisticsOverview) _then;

  /// Create a copy of StatisticsOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearMonthlyAverage = null,
    Object? previousYearMonthlyAverage = null,
    Object? monthlyCategoryTotals = null,
    Object? categoryAverage = null,
  }) {
    return _then(_self.copyWith(
      yearMonthlyAverage: null == yearMonthlyAverage
          ? _self.yearMonthlyAverage
          : yearMonthlyAverage // ignore: cast_nullable_to_non_nullable
              as YearMonthlyAverage,
      previousYearMonthlyAverage: null == previousYearMonthlyAverage
          ? _self.previousYearMonthlyAverage
          : previousYearMonthlyAverage // ignore: cast_nullable_to_non_nullable
              as YearMonthlyAverage,
      monthlyCategoryTotals: null == monthlyCategoryTotals
          ? _self.monthlyCategoryTotals
          : monthlyCategoryTotals // ignore: cast_nullable_to_non_nullable
              as List<MonthlyCategoryTotals>,
      categoryAverage: null == categoryAverage
          ? _self.categoryAverage
          : categoryAverage // ignore: cast_nullable_to_non_nullable
              as Map<String, num>,
    ));
  }

  /// Create a copy of StatisticsOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $YearMonthlyAverageCopyWith<$Res> get yearMonthlyAverage {
    return $YearMonthlyAverageCopyWith<$Res>(_self.yearMonthlyAverage, (value) {
      return _then(_self.copyWith(yearMonthlyAverage: value));
    });
  }

  /// Create a copy of StatisticsOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $YearMonthlyAverageCopyWith<$Res> get previousYearMonthlyAverage {
    return $YearMonthlyAverageCopyWith<$Res>(_self.previousYearMonthlyAverage,
        (value) {
      return _then(_self.copyWith(previousYearMonthlyAverage: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StatisticsOverview].
extension StatisticsOverviewPatterns on StatisticsOverview {
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
    TResult Function(_StatisticsOverview value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatisticsOverview() when $default != null:
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
    TResult Function(_StatisticsOverview value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatisticsOverview():
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
    TResult? Function(_StatisticsOverview value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatisticsOverview() when $default != null:
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
    TResult Function(
            YearMonthlyAverage yearMonthlyAverage,
            YearMonthlyAverage previousYearMonthlyAverage,
            List<MonthlyCategoryTotals> monthlyCategoryTotals,
            Map<String, num> categoryAverage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatisticsOverview() when $default != null:
        return $default(
            _that.yearMonthlyAverage,
            _that.previousYearMonthlyAverage,
            _that.monthlyCategoryTotals,
            _that.categoryAverage);
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
    TResult Function(
            YearMonthlyAverage yearMonthlyAverage,
            YearMonthlyAverage previousYearMonthlyAverage,
            List<MonthlyCategoryTotals> monthlyCategoryTotals,
            Map<String, num> categoryAverage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatisticsOverview():
        return $default(
            _that.yearMonthlyAverage,
            _that.previousYearMonthlyAverage,
            _that.monthlyCategoryTotals,
            _that.categoryAverage);
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
    TResult? Function(
            YearMonthlyAverage yearMonthlyAverage,
            YearMonthlyAverage previousYearMonthlyAverage,
            List<MonthlyCategoryTotals> monthlyCategoryTotals,
            Map<String, num> categoryAverage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatisticsOverview() when $default != null:
        return $default(
            _that.yearMonthlyAverage,
            _that.previousYearMonthlyAverage,
            _that.monthlyCategoryTotals,
            _that.categoryAverage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StatisticsOverview implements StatisticsOverview {
  _StatisticsOverview(
      {required this.yearMonthlyAverage,
      required this.previousYearMonthlyAverage,
      required final List<MonthlyCategoryTotals> monthlyCategoryTotals,
      required final Map<String, num> categoryAverage})
      : _monthlyCategoryTotals = monthlyCategoryTotals,
        _categoryAverage = categoryAverage;
  factory _StatisticsOverview.fromJson(Map<String, dynamic> json) =>
      _$StatisticsOverviewFromJson(json);

  @override
  final YearMonthlyAverage yearMonthlyAverage;
  @override
  final YearMonthlyAverage previousYearMonthlyAverage;
  final List<MonthlyCategoryTotals> _monthlyCategoryTotals;
  @override
  List<MonthlyCategoryTotals> get monthlyCategoryTotals {
    if (_monthlyCategoryTotals is EqualUnmodifiableListView)
      return _monthlyCategoryTotals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyCategoryTotals);
  }

  final Map<String, num> _categoryAverage;
  @override
  Map<String, num> get categoryAverage {
    if (_categoryAverage is EqualUnmodifiableMapView) return _categoryAverage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categoryAverage);
  }

  /// Create a copy of StatisticsOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StatisticsOverviewCopyWith<_StatisticsOverview> get copyWith =>
      __$StatisticsOverviewCopyWithImpl<_StatisticsOverview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StatisticsOverviewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatisticsOverview &&
            (identical(other.yearMonthlyAverage, yearMonthlyAverage) ||
                other.yearMonthlyAverage == yearMonthlyAverage) &&
            (identical(other.previousYearMonthlyAverage,
                    previousYearMonthlyAverage) ||
                other.previousYearMonthlyAverage ==
                    previousYearMonthlyAverage) &&
            const DeepCollectionEquality()
                .equals(other._monthlyCategoryTotals, _monthlyCategoryTotals) &&
            const DeepCollectionEquality()
                .equals(other._categoryAverage, _categoryAverage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      yearMonthlyAverage,
      previousYearMonthlyAverage,
      const DeepCollectionEquality().hash(_monthlyCategoryTotals),
      const DeepCollectionEquality().hash(_categoryAverage));

  @override
  String toString() {
    return 'StatisticsOverview(yearMonthlyAverage: $yearMonthlyAverage, previousYearMonthlyAverage: $previousYearMonthlyAverage, monthlyCategoryTotals: $monthlyCategoryTotals, categoryAverage: $categoryAverage)';
  }
}

/// @nodoc
abstract mixin class _$StatisticsOverviewCopyWith<$Res>
    implements $StatisticsOverviewCopyWith<$Res> {
  factory _$StatisticsOverviewCopyWith(
          _StatisticsOverview value, $Res Function(_StatisticsOverview) _then) =
      __$StatisticsOverviewCopyWithImpl;
  @override
  @useResult
  $Res call(
      {YearMonthlyAverage yearMonthlyAverage,
      YearMonthlyAverage previousYearMonthlyAverage,
      List<MonthlyCategoryTotals> monthlyCategoryTotals,
      Map<String, num> categoryAverage});

  @override
  $YearMonthlyAverageCopyWith<$Res> get yearMonthlyAverage;
  @override
  $YearMonthlyAverageCopyWith<$Res> get previousYearMonthlyAverage;
}

/// @nodoc
class __$StatisticsOverviewCopyWithImpl<$Res>
    implements _$StatisticsOverviewCopyWith<$Res> {
  __$StatisticsOverviewCopyWithImpl(this._self, this._then);

  final _StatisticsOverview _self;
  final $Res Function(_StatisticsOverview) _then;

  /// Create a copy of StatisticsOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? yearMonthlyAverage = null,
    Object? previousYearMonthlyAverage = null,
    Object? monthlyCategoryTotals = null,
    Object? categoryAverage = null,
  }) {
    return _then(_StatisticsOverview(
      yearMonthlyAverage: null == yearMonthlyAverage
          ? _self.yearMonthlyAverage
          : yearMonthlyAverage // ignore: cast_nullable_to_non_nullable
              as YearMonthlyAverage,
      previousYearMonthlyAverage: null == previousYearMonthlyAverage
          ? _self.previousYearMonthlyAverage
          : previousYearMonthlyAverage // ignore: cast_nullable_to_non_nullable
              as YearMonthlyAverage,
      monthlyCategoryTotals: null == monthlyCategoryTotals
          ? _self._monthlyCategoryTotals
          : monthlyCategoryTotals // ignore: cast_nullable_to_non_nullable
              as List<MonthlyCategoryTotals>,
      categoryAverage: null == categoryAverage
          ? _self._categoryAverage
          : categoryAverage // ignore: cast_nullable_to_non_nullable
              as Map<String, num>,
    ));
  }

  /// Create a copy of StatisticsOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $YearMonthlyAverageCopyWith<$Res> get yearMonthlyAverage {
    return $YearMonthlyAverageCopyWith<$Res>(_self.yearMonthlyAverage, (value) {
      return _then(_self.copyWith(yearMonthlyAverage: value));
    });
  }

  /// Create a copy of StatisticsOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $YearMonthlyAverageCopyWith<$Res> get previousYearMonthlyAverage {
    return $YearMonthlyAverageCopyWith<$Res>(_self.previousYearMonthlyAverage,
        (value) {
      return _then(_self.copyWith(previousYearMonthlyAverage: value));
    });
  }
}

// dart format on
