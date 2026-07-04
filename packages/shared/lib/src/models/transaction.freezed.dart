// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Transaction {
  String get id;
  DateTime get date;
  String get text;
  num get amount;
  Account get account;
  Category get category;
  bool get fixedCost;
  String? get description;
  String? get linkedTransactionId;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<Transaction> get copyWith =>
      _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Transaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.fixedCost, fixedCost) ||
                other.fixedCost == fixedCost) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.linkedTransactionId, linkedTransactionId) ||
                other.linkedTransactionId == linkedTransactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, text, amount, account,
      category, fixedCost, description, linkedTransactionId);

  @override
  String toString() {
    return 'Transaction(id: $id, date: $date, text: $text, amount: $amount, account: $account, category: $category, fixedCost: $fixedCost, description: $description, linkedTransactionId: $linkedTransactionId)';
  }
}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) _then) =
      _$TransactionCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String text,
      num amount,
      Account account,
      Category category,
      bool fixedCost,
      String? description,
      String? linkedTransactionId});

  $AccountCopyWith<$Res> get account;
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? text = null,
    Object? amount = null,
    Object? account = null,
    Object? category = null,
    Object? fixedCost = null,
    Object? description = freezed,
    Object? linkedTransactionId = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      account: null == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      fixedCost: null == fixedCost
          ? _self.fixedCost
          : fixedCost // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedTransactionId: freezed == linkedTransactionId
          ? _self.linkedTransactionId
          : linkedTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_self.account, (value) {
      return _then(_self.copyWith(account: value));
    });
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_self.category, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
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
    TResult Function(_Transaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
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
    TResult Function(_Transaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction():
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
    TResult? Function(_Transaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
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
            String id,
            DateTime date,
            String text,
            num amount,
            Account account,
            Category category,
            bool fixedCost,
            String? description,
            String? linkedTransactionId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
        return $default(
            _that.id,
            _that.date,
            _that.text,
            _that.amount,
            _that.account,
            _that.category,
            _that.fixedCost,
            _that.description,
            _that.linkedTransactionId);
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
            String id,
            DateTime date,
            String text,
            num amount,
            Account account,
            Category category,
            bool fixedCost,
            String? description,
            String? linkedTransactionId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction():
        return $default(
            _that.id,
            _that.date,
            _that.text,
            _that.amount,
            _that.account,
            _that.category,
            _that.fixedCost,
            _that.description,
            _that.linkedTransactionId);
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
            String id,
            DateTime date,
            String text,
            num amount,
            Account account,
            Category category,
            bool fixedCost,
            String? description,
            String? linkedTransactionId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
        return $default(
            _that.id,
            _that.date,
            _that.text,
            _that.amount,
            _that.account,
            _that.category,
            _that.fixedCost,
            _that.description,
            _that.linkedTransactionId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Transaction implements Transaction {
  _Transaction(
      {required this.id,
      required this.date,
      required this.text,
      required this.amount,
      required this.account,
      required this.category,
      required this.fixedCost,
      this.description,
      this.linkedTransactionId});
  factory _Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final String text;
  @override
  final num amount;
  @override
  final Account account;
  @override
  final Category category;
  @override
  final bool fixedCost;
  @override
  final String? description;
  @override
  final String? linkedTransactionId;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.fixedCost, fixedCost) ||
                other.fixedCost == fixedCost) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.linkedTransactionId, linkedTransactionId) ||
                other.linkedTransactionId == linkedTransactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, text, amount, account,
      category, fixedCost, description, linkedTransactionId);

  @override
  String toString() {
    return 'Transaction(id: $id, date: $date, text: $text, amount: $amount, account: $account, category: $category, fixedCost: $fixedCost, description: $description, linkedTransactionId: $linkedTransactionId)';
  }
}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) _then) =
      __$TransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String text,
      num amount,
      Account account,
      Category category,
      bool fixedCost,
      String? description,
      String? linkedTransactionId});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? text = null,
    Object? amount = null,
    Object? account = null,
    Object? category = null,
    Object? fixedCost = null,
    Object? description = freezed,
    Object? linkedTransactionId = freezed,
  }) {
    return _then(_Transaction(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      account: null == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      fixedCost: null == fixedCost
          ? _self.fixedCost
          : fixedCost // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedTransactionId: freezed == linkedTransactionId
          ? _self.linkedTransactionId
          : linkedTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_self.account, (value) {
      return _then(_self.copyWith(account: value));
    });
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_self.category, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// @nodoc
mixin _$CreateTransaction {
  DateTime get date;
  String get text;
  num get amount;
  String get accountId;
  String get categoryId;
  bool get fixedCost;
  String? get description;
  String? get linkedTransactionId;

  /// Create a copy of CreateTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateTransactionCopyWith<CreateTransaction> get copyWith =>
      _$CreateTransactionCopyWithImpl<CreateTransaction>(
          this as CreateTransaction, _$identity);

  /// Serializes this CreateTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateTransaction &&
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
            (identical(other.linkedTransactionId, linkedTransactionId) ||
                other.linkedTransactionId == linkedTransactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, text, amount, accountId,
      categoryId, fixedCost, description, linkedTransactionId);

  @override
  String toString() {
    return 'CreateTransaction(date: $date, text: $text, amount: $amount, accountId: $accountId, categoryId: $categoryId, fixedCost: $fixedCost, description: $description, linkedTransactionId: $linkedTransactionId)';
  }
}

/// @nodoc
abstract mixin class $CreateTransactionCopyWith<$Res> {
  factory $CreateTransactionCopyWith(
          CreateTransaction value, $Res Function(CreateTransaction) _then) =
      _$CreateTransactionCopyWithImpl;
  @useResult
  $Res call(
      {DateTime date,
      String text,
      num amount,
      String accountId,
      String categoryId,
      bool fixedCost,
      String? description,
      String? linkedTransactionId});
}

/// @nodoc
class _$CreateTransactionCopyWithImpl<$Res>
    implements $CreateTransactionCopyWith<$Res> {
  _$CreateTransactionCopyWithImpl(this._self, this._then);

  final CreateTransaction _self;
  final $Res Function(CreateTransaction) _then;

  /// Create a copy of CreateTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? text = null,
    Object? amount = null,
    Object? accountId = null,
    Object? categoryId = null,
    Object? fixedCost = null,
    Object? description = freezed,
    Object? linkedTransactionId = freezed,
  }) {
    return _then(_self.copyWith(
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
      linkedTransactionId: freezed == linkedTransactionId
          ? _self.linkedTransactionId
          : linkedTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateTransaction].
extension CreateTransactionPatterns on CreateTransaction {
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
    TResult Function(_CreateTransaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateTransaction() when $default != null:
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
    TResult Function(_CreateTransaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTransaction():
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
    TResult? Function(_CreateTransaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTransaction() when $default != null:
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
            DateTime date,
            String text,
            num amount,
            String accountId,
            String categoryId,
            bool fixedCost,
            String? description,
            String? linkedTransactionId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateTransaction() when $default != null:
        return $default(
            _that.date,
            _that.text,
            _that.amount,
            _that.accountId,
            _that.categoryId,
            _that.fixedCost,
            _that.description,
            _that.linkedTransactionId);
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
            DateTime date,
            String text,
            num amount,
            String accountId,
            String categoryId,
            bool fixedCost,
            String? description,
            String? linkedTransactionId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTransaction():
        return $default(
            _that.date,
            _that.text,
            _that.amount,
            _that.accountId,
            _that.categoryId,
            _that.fixedCost,
            _that.description,
            _that.linkedTransactionId);
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
            DateTime date,
            String text,
            num amount,
            String accountId,
            String categoryId,
            bool fixedCost,
            String? description,
            String? linkedTransactionId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTransaction() when $default != null:
        return $default(
            _that.date,
            _that.text,
            _that.amount,
            _that.accountId,
            _that.categoryId,
            _that.fixedCost,
            _that.description,
            _that.linkedTransactionId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateTransaction implements CreateTransaction {
  _CreateTransaction(
      {required this.date,
      required this.text,
      required this.amount,
      required this.accountId,
      required this.categoryId,
      required this.fixedCost,
      required this.description,
      this.linkedTransactionId});
  factory _CreateTransaction.fromJson(Map<String, dynamic> json) =>
      _$CreateTransactionFromJson(json);

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
  final String? linkedTransactionId;

  /// Create a copy of CreateTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateTransactionCopyWith<_CreateTransaction> get copyWith =>
      __$CreateTransactionCopyWithImpl<_CreateTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateTransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateTransaction &&
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
            (identical(other.linkedTransactionId, linkedTransactionId) ||
                other.linkedTransactionId == linkedTransactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, text, amount, accountId,
      categoryId, fixedCost, description, linkedTransactionId);

  @override
  String toString() {
    return 'CreateTransaction(date: $date, text: $text, amount: $amount, accountId: $accountId, categoryId: $categoryId, fixedCost: $fixedCost, description: $description, linkedTransactionId: $linkedTransactionId)';
  }
}

/// @nodoc
abstract mixin class _$CreateTransactionCopyWith<$Res>
    implements $CreateTransactionCopyWith<$Res> {
  factory _$CreateTransactionCopyWith(
          _CreateTransaction value, $Res Function(_CreateTransaction) _then) =
      __$CreateTransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String text,
      num amount,
      String accountId,
      String categoryId,
      bool fixedCost,
      String? description,
      String? linkedTransactionId});
}

/// @nodoc
class __$CreateTransactionCopyWithImpl<$Res>
    implements _$CreateTransactionCopyWith<$Res> {
  __$CreateTransactionCopyWithImpl(this._self, this._then);

  final _CreateTransaction _self;
  final $Res Function(_CreateTransaction) _then;

  /// Create a copy of CreateTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? text = null,
    Object? amount = null,
    Object? accountId = null,
    Object? categoryId = null,
    Object? fixedCost = null,
    Object? description = freezed,
    Object? linkedTransactionId = freezed,
  }) {
    return _then(_CreateTransaction(
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
      linkedTransactionId: freezed == linkedTransactionId
          ? _self.linkedTransactionId
          : linkedTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$LinkTransaction {
  String? get linkedTransactionId;

  /// Create a copy of LinkTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LinkTransactionCopyWith<LinkTransaction> get copyWith =>
      _$LinkTransactionCopyWithImpl<LinkTransaction>(
          this as LinkTransaction, _$identity);

  /// Serializes this LinkTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LinkTransaction &&
            (identical(other.linkedTransactionId, linkedTransactionId) ||
                other.linkedTransactionId == linkedTransactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, linkedTransactionId);

  @override
  String toString() {
    return 'LinkTransaction(linkedTransactionId: $linkedTransactionId)';
  }
}

/// @nodoc
abstract mixin class $LinkTransactionCopyWith<$Res> {
  factory $LinkTransactionCopyWith(
          LinkTransaction value, $Res Function(LinkTransaction) _then) =
      _$LinkTransactionCopyWithImpl;
  @useResult
  $Res call({String? linkedTransactionId});
}

/// @nodoc
class _$LinkTransactionCopyWithImpl<$Res>
    implements $LinkTransactionCopyWith<$Res> {
  _$LinkTransactionCopyWithImpl(this._self, this._then);

  final LinkTransaction _self;
  final $Res Function(LinkTransaction) _then;

  /// Create a copy of LinkTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkedTransactionId = freezed,
  }) {
    return _then(_self.copyWith(
      linkedTransactionId: freezed == linkedTransactionId
          ? _self.linkedTransactionId
          : linkedTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LinkTransaction].
extension LinkTransactionPatterns on LinkTransaction {
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
    TResult Function(_LinkTransaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LinkTransaction() when $default != null:
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
    TResult Function(_LinkTransaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LinkTransaction():
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
    TResult? Function(_LinkTransaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LinkTransaction() when $default != null:
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
    TResult Function(String? linkedTransactionId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LinkTransaction() when $default != null:
        return $default(_that.linkedTransactionId);
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
    TResult Function(String? linkedTransactionId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LinkTransaction():
        return $default(_that.linkedTransactionId);
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
    TResult? Function(String? linkedTransactionId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LinkTransaction() when $default != null:
        return $default(_that.linkedTransactionId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LinkTransaction implements LinkTransaction {
  _LinkTransaction({this.linkedTransactionId});
  factory _LinkTransaction.fromJson(Map<String, dynamic> json) =>
      _$LinkTransactionFromJson(json);

  @override
  final String? linkedTransactionId;

  /// Create a copy of LinkTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LinkTransactionCopyWith<_LinkTransaction> get copyWith =>
      __$LinkTransactionCopyWithImpl<_LinkTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LinkTransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LinkTransaction &&
            (identical(other.linkedTransactionId, linkedTransactionId) ||
                other.linkedTransactionId == linkedTransactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, linkedTransactionId);

  @override
  String toString() {
    return 'LinkTransaction(linkedTransactionId: $linkedTransactionId)';
  }
}

/// @nodoc
abstract mixin class _$LinkTransactionCopyWith<$Res>
    implements $LinkTransactionCopyWith<$Res> {
  factory _$LinkTransactionCopyWith(
          _LinkTransaction value, $Res Function(_LinkTransaction) _then) =
      __$LinkTransactionCopyWithImpl;
  @override
  @useResult
  $Res call({String? linkedTransactionId});
}

/// @nodoc
class __$LinkTransactionCopyWithImpl<$Res>
    implements _$LinkTransactionCopyWith<$Res> {
  __$LinkTransactionCopyWithImpl(this._self, this._then);

  final _LinkTransaction _self;
  final $Res Function(_LinkTransaction) _then;

  /// Create a copy of LinkTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? linkedTransactionId = freezed,
  }) {
    return _then(_LinkTransaction(
      linkedTransactionId: freezed == linkedTransactionId
          ? _self.linkedTransactionId
          : linkedTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
