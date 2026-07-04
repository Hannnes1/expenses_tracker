// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DbTransaction {
  String? get id;
  String get userId;
  DateTime get date;
  String get text;
  num get amount;
  String get accountId;
  String get categoryId;
  bool get fixedCost;
  String? get description;
  DateTime? get createdAt;

  /// Create a copy of DbTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DbTransactionCopyWith<DbTransaction> get copyWith =>
      _$DbTransactionCopyWithImpl<DbTransaction>(
          this as DbTransaction, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DbTransaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.fixedCost, fixedCost) ||
                other.fixedCost == fixedCost) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, date, text, amount,
      accountId, categoryId, fixedCost, description, createdAt);

  @override
  String toString() {
    return 'DbTransaction(id: $id, userId: $userId, date: $date, text: $text, amount: $amount, accountId: $accountId, categoryId: $categoryId, fixedCost: $fixedCost, description: $description, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $DbTransactionCopyWith<$Res> {
  factory $DbTransactionCopyWith(
          DbTransaction value, $Res Function(DbTransaction) _then) =
      _$DbTransactionCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String userId,
      DateTime date,
      String text,
      num amount,
      String accountId,
      String categoryId,
      bool fixedCost,
      String? description,
      DateTime? createdAt});
}

/// @nodoc
class _$DbTransactionCopyWithImpl<$Res>
    implements $DbTransactionCopyWith<$Res> {
  _$DbTransactionCopyWithImpl(this._self, this._then);

  final DbTransaction _self;
  final $Res Function(DbTransaction) _then;

  /// Create a copy of DbTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? date = null,
    Object? text = null,
    Object? amount = null,
    Object? accountId = null,
    Object? categoryId = null,
    Object? fixedCost = null,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      fixedCost: null == fixedCost
          ? _self.fixedCost
          : fixedCost // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DbTransaction].
extension DbTransactionPatterns on DbTransaction {
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
    TResult Function(_DbTransaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DbTransaction() when $default != null:
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
    TResult Function(_DbTransaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DbTransaction():
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
    TResult? Function(_DbTransaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DbTransaction() when $default != null:
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
            String? id,
            String userId,
            DateTime date,
            String text,
            num amount,
            String accountId,
            String categoryId,
            bool fixedCost,
            String? description,
            DateTime? createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DbTransaction() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.date,
            _that.text,
            _that.amount,
            _that.accountId,
            _that.categoryId,
            _that.fixedCost,
            _that.description,
            _that.createdAt);
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
            String? id,
            String userId,
            DateTime date,
            String text,
            num amount,
            String accountId,
            String categoryId,
            bool fixedCost,
            String? description,
            DateTime? createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DbTransaction():
        return $default(
            _that.id,
            _that.userId,
            _that.date,
            _that.text,
            _that.amount,
            _that.accountId,
            _that.categoryId,
            _that.fixedCost,
            _that.description,
            _that.createdAt);
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
            String? id,
            String userId,
            DateTime date,
            String text,
            num amount,
            String accountId,
            String categoryId,
            bool fixedCost,
            String? description,
            DateTime? createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DbTransaction() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.date,
            _that.text,
            _that.amount,
            _that.accountId,
            _that.categoryId,
            _that.fixedCost,
            _that.description,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DbTransaction implements DbTransaction {
  _DbTransaction(
      {this.id,
      required this.userId,
      required this.date,
      required this.text,
      required this.amount,
      required this.accountId,
      required this.categoryId,
      required this.fixedCost,
      required this.description,
      this.createdAt});

  @override
  final String? id;
  @override
  final String userId;
  @override
  final DateTime date;
  @override
  final String text;
  @override
  final num amount;
  @override
  final String accountId;
  @override
  final String categoryId;
  @override
  final bool fixedCost;
  @override
  final String? description;
  @override
  final DateTime? createdAt;

  /// Create a copy of DbTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DbTransactionCopyWith<_DbTransaction> get copyWith =>
      __$DbTransactionCopyWithImpl<_DbTransaction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DbTransaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.fixedCost, fixedCost) ||
                other.fixedCost == fixedCost) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, date, text, amount,
      accountId, categoryId, fixedCost, description, createdAt);

  @override
  String toString() {
    return 'DbTransaction(id: $id, userId: $userId, date: $date, text: $text, amount: $amount, accountId: $accountId, categoryId: $categoryId, fixedCost: $fixedCost, description: $description, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$DbTransactionCopyWith<$Res>
    implements $DbTransactionCopyWith<$Res> {
  factory _$DbTransactionCopyWith(
          _DbTransaction value, $Res Function(_DbTransaction) _then) =
      __$DbTransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String userId,
      DateTime date,
      String text,
      num amount,
      String accountId,
      String categoryId,
      bool fixedCost,
      String? description,
      DateTime? createdAt});
}

/// @nodoc
class __$DbTransactionCopyWithImpl<$Res>
    implements _$DbTransactionCopyWith<$Res> {
  __$DbTransactionCopyWithImpl(this._self, this._then);

  final _DbTransaction _self;
  final $Res Function(_DbTransaction) _then;

  /// Create a copy of DbTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? date = null,
    Object? text = null,
    Object? amount = null,
    Object? accountId = null,
    Object? categoryId = null,
    Object? fixedCost = null,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_DbTransaction(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      fixedCost: null == fixedCost
          ? _self.fixedCost
          : fixedCost // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
