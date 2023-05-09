// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DbTransaction {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  bool get fixedCost => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DbTransactionCopyWith<DbTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DbTransactionCopyWith<$Res> {
  factory $DbTransactionCopyWith(
          DbTransaction value, $Res Function(DbTransaction) then) =
      _$DbTransactionCopyWithImpl<$Res, DbTransaction>;
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
class _$DbTransactionCopyWithImpl<$Res, $Val extends DbTransaction>
    implements $DbTransactionCopyWith<$Res> {
  _$DbTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      fixedCost: null == fixedCost
          ? _value.fixedCost
          : fixedCost // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DbTransactionCopyWith<$Res>
    implements $DbTransactionCopyWith<$Res> {
  factory _$$_DbTransactionCopyWith(
          _$_DbTransaction value, $Res Function(_$_DbTransaction) then) =
      __$$_DbTransactionCopyWithImpl<$Res>;
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
class __$$_DbTransactionCopyWithImpl<$Res>
    extends _$DbTransactionCopyWithImpl<$Res, _$_DbTransaction>
    implements _$$_DbTransactionCopyWith<$Res> {
  __$$_DbTransactionCopyWithImpl(
      _$_DbTransaction _value, $Res Function(_$_DbTransaction) _then)
      : super(_value, _then);

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
    return _then(_$_DbTransaction(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      fixedCost: null == fixedCost
          ? _value.fixedCost
          : fixedCost // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DbTransaction implements _DbTransaction {
  _$_DbTransaction(
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

  @override
  String toString() {
    return 'DbTransaction(id: $id, userId: $userId, date: $date, text: $text, amount: $amount, accountId: $accountId, categoryId: $categoryId, fixedCost: $fixedCost, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DbTransaction &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DbTransactionCopyWith<_$_DbTransaction> get copyWith =>
      __$$_DbTransactionCopyWithImpl<_$_DbTransaction>(this, _$identity);
}

abstract class _DbTransaction implements DbTransaction {
  factory _DbTransaction(
      {final String? id,
      required final String userId,
      required final DateTime date,
      required final String text,
      required final num amount,
      required final String accountId,
      required final String categoryId,
      required final bool fixedCost,
      required final String? description,
      final DateTime? createdAt}) = _$_DbTransaction;

  @override
  String? get id;
  @override
  String get userId;
  @override
  DateTime get date;
  @override
  String get text;
  @override
  num get amount;
  @override
  String get accountId;
  @override
  String get categoryId;
  @override
  bool get fixedCost;
  @override
  String? get description;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_DbTransactionCopyWith<_$_DbTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
