// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionsFilterState {
  TransactionsOrder get order;
  DateTime? get startDate;
  DateTime? get endDate;
  List<Category> get categories;

  /// Create a copy of TransactionsFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionsFilterStateCopyWith<TransactionsFilterState> get copyWith =>
      _$TransactionsFilterStateCopyWithImpl<TransactionsFilterState>(
          this as TransactionsFilterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionsFilterState &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, startDate, endDate,
      const DeepCollectionEquality().hash(categories));

  @override
  String toString() {
    return 'TransactionsFilterState(order: $order, startDate: $startDate, endDate: $endDate, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $TransactionsFilterStateCopyWith<$Res> {
  factory $TransactionsFilterStateCopyWith(TransactionsFilterState value,
          $Res Function(TransactionsFilterState) _then) =
      _$TransactionsFilterStateCopyWithImpl;
  @useResult
  $Res call(
      {TransactionsOrder order,
      DateTime? startDate,
      DateTime? endDate,
      List<Category> categories});
}

/// @nodoc
class _$TransactionsFilterStateCopyWithImpl<$Res>
    implements $TransactionsFilterStateCopyWith<$Res> {
  _$TransactionsFilterStateCopyWithImpl(this._self, this._then);

  final TransactionsFilterState _self;
  final $Res Function(TransactionsFilterState) _then;

  /// Create a copy of TransactionsFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? categories = null,
  }) {
    return _then(_self.copyWith(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as TransactionsOrder,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// Adds pattern-matching-related methods to [TransactionsFilterState].
extension TransactionsFilterStatePatterns on TransactionsFilterState {
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
    TResult Function(_TransactionsFilterState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TransactionsFilterState() when $default != null:
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
    TResult Function(_TransactionsFilterState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TransactionsFilterState():
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
    TResult? Function(_TransactionsFilterState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TransactionsFilterState() when $default != null:
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
    TResult Function(TransactionsOrder order, DateTime? startDate,
            DateTime? endDate, List<Category> categories)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TransactionsFilterState() when $default != null:
        return $default(
            _that.order, _that.startDate, _that.endDate, _that.categories);
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
    TResult Function(TransactionsOrder order, DateTime? startDate,
            DateTime? endDate, List<Category> categories)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TransactionsFilterState():
        return $default(
            _that.order, _that.startDate, _that.endDate, _that.categories);
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
    TResult? Function(TransactionsOrder order, DateTime? startDate,
            DateTime? endDate, List<Category> categories)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TransactionsFilterState() when $default != null:
        return $default(
            _that.order, _that.startDate, _that.endDate, _that.categories);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TransactionsFilterState implements TransactionsFilterState {
  const _TransactionsFilterState(
      {required this.order,
      required this.startDate,
      required this.endDate,
      required final List<Category> categories})
      : _categories = categories;

  @override
  final TransactionsOrder order;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// Create a copy of TransactionsFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TransactionsFilterStateCopyWith<_TransactionsFilterState> get copyWith =>
      __$TransactionsFilterStateCopyWithImpl<_TransactionsFilterState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionsFilterState &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, startDate, endDate,
      const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'TransactionsFilterState(order: $order, startDate: $startDate, endDate: $endDate, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class _$TransactionsFilterStateCopyWith<$Res>
    implements $TransactionsFilterStateCopyWith<$Res> {
  factory _$TransactionsFilterStateCopyWith(_TransactionsFilterState value,
          $Res Function(_TransactionsFilterState) _then) =
      __$TransactionsFilterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TransactionsOrder order,
      DateTime? startDate,
      DateTime? endDate,
      List<Category> categories});
}

/// @nodoc
class __$TransactionsFilterStateCopyWithImpl<$Res>
    implements _$TransactionsFilterStateCopyWith<$Res> {
  __$TransactionsFilterStateCopyWithImpl(this._self, this._then);

  final _TransactionsFilterState _self;
  final $Res Function(_TransactionsFilterState) _then;

  /// Create a copy of TransactionsFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? categories = null,
  }) {
    return _then(_TransactionsFilterState(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as TransactionsOrder,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

// dart format on
