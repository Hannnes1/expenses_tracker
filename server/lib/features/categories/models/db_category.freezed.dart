// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DbCategory {
  String get id;
  String get name;
  String? get description;
  DateTime get createdAt;

  /// Create a copy of DbCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DbCategoryCopyWith<DbCategory> get copyWith =>
      _$DbCategoryCopyWithImpl<DbCategory>(this as DbCategory, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DbCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, createdAt);

  @override
  String toString() {
    return 'DbCategory(id: $id, name: $name, description: $description, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $DbCategoryCopyWith<$Res> {
  factory $DbCategoryCopyWith(
          DbCategory value, $Res Function(DbCategory) _then) =
      _$DbCategoryCopyWithImpl;
  @useResult
  $Res call({String id, String name, String? description, DateTime createdAt});
}

/// @nodoc
class _$DbCategoryCopyWithImpl<$Res> implements $DbCategoryCopyWith<$Res> {
  _$DbCategoryCopyWithImpl(this._self, this._then);

  final DbCategory _self;
  final $Res Function(DbCategory) _then;

  /// Create a copy of DbCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [DbCategory].
extension DbCategoryPatterns on DbCategory {
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
    TResult Function(_DbCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DbCategory() when $default != null:
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
    TResult Function(_DbCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DbCategory():
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
    TResult? Function(_DbCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DbCategory() when $default != null:
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
            String id, String name, String? description, DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DbCategory() when $default != null:
        return $default(
            _that.id, _that.name, _that.description, _that.createdAt);
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
            String id, String name, String? description, DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DbCategory():
        return $default(
            _that.id, _that.name, _that.description, _that.createdAt);
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
            String id, String name, String? description, DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DbCategory() when $default != null:
        return $default(
            _that.id, _that.name, _that.description, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DbCategory implements DbCategory {
  _DbCategory(
      {required this.id,
      required this.name,
      required this.description,
      required this.createdAt});

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final DateTime createdAt;

  /// Create a copy of DbCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DbCategoryCopyWith<_DbCategory> get copyWith =>
      __$DbCategoryCopyWithImpl<_DbCategory>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DbCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, createdAt);

  @override
  String toString() {
    return 'DbCategory(id: $id, name: $name, description: $description, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$DbCategoryCopyWith<$Res>
    implements $DbCategoryCopyWith<$Res> {
  factory _$DbCategoryCopyWith(
          _DbCategory value, $Res Function(_DbCategory) _then) =
      __$DbCategoryCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, String? description, DateTime createdAt});
}

/// @nodoc
class __$DbCategoryCopyWithImpl<$Res> implements _$DbCategoryCopyWith<$Res> {
  __$DbCategoryCopyWithImpl(this._self, this._then);

  final _DbCategory _self;
  final $Res Function(_DbCategory) _then;

  /// Create a copy of DbCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? createdAt = null,
  }) {
    return _then(_DbCategory(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
