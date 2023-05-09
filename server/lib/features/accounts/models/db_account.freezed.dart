// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DbAccount {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DbAccountCopyWith<DbAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DbAccountCopyWith<$Res> {
  factory $DbAccountCopyWith(DbAccount value, $Res Function(DbAccount) then) =
      _$DbAccountCopyWithImpl<$Res, DbAccount>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      String? description,
      DateTime createdAt});
}

/// @nodoc
class _$DbAccountCopyWithImpl<$Res, $Val extends DbAccount>
    implements $DbAccountCopyWith<$Res> {
  _$DbAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? description = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DbAccountCopyWith<$Res> implements $DbAccountCopyWith<$Res> {
  factory _$$_DbAccountCopyWith(
          _$_DbAccount value, $Res Function(_$_DbAccount) then) =
      __$$_DbAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      String? description,
      DateTime createdAt});
}

/// @nodoc
class __$$_DbAccountCopyWithImpl<$Res>
    extends _$DbAccountCopyWithImpl<$Res, _$_DbAccount>
    implements _$$_DbAccountCopyWith<$Res> {
  __$$_DbAccountCopyWithImpl(
      _$_DbAccount _value, $Res Function(_$_DbAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? description = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$_DbAccount(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DbAccount implements _DbAccount {
  _$_DbAccount(
      {required this.id,
      required this.userId,
      required this.name,
      required this.description,
      required this.createdAt});

  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'DbAccount(id: $id, userId: $userId, name: $name, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DbAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, name, description, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DbAccountCopyWith<_$_DbAccount> get copyWith =>
      __$$_DbAccountCopyWithImpl<_$_DbAccount>(this, _$identity);
}

abstract class _DbAccount implements DbAccount {
  factory _DbAccount(
      {required final String id,
      required final String userId,
      required final String name,
      required final String? description,
      required final DateTime createdAt}) = _$_DbAccount;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get name;
  @override
  String? get description;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_DbAccountCopyWith<_$_DbAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
