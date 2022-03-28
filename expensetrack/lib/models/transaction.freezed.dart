// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {String? id,
      required String date,
      required String account,
      String? verificationNumber,
      required String text,
      String? description,
      required num amount}) {
    return _Transaction(
      id: id,
      date: date,
      account: account,
      verificationNumber: verificationNumber,
      text: text,
      description: description,
      amount: amount,
    );
  }

  Transaction fromJson(Map<String, Object?> json) {
    return Transaction.fromJson(json);
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  /// The ID of the category.
  ///
  /// Will be ignored when writing.
  String? get id => throw _privateConstructorUsedError;

  /// The date that the transaction was made.
  ///
  /// Must be formatted according to the ISO 8601 standard.
  String get date => throw _privateConstructorUsedError;

  /// The account number that the transaction belongs to.
  ///
  /// Max 20 characters.
  String get account => throw _privateConstructorUsedError;

  /// The verification number of the transaction.
  ///
  /// Max 20 characters.
  String? get verificationNumber => throw _privateConstructorUsedError;

  /// The Text from the bank for the transaction.
  ///
  /// Max 45 characters.
  String get text => throw _privateConstructorUsedError;

  /// A description of the transaction.
  ///
  /// Max 255 characters.
  String? get description => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String date,
      String account,
      String? verificationNumber,
      String text,
      String? description,
      num amount});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? account = freezed,
    Object? verificationNumber = freezed,
    Object? text = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      verificationNumber: verificationNumber == freezed
          ? _value.verificationNumber
          : verificationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String date,
      String account,
      String? verificationNumber,
      String text,
      String? description,
      num amount});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? account = freezed,
    Object? verificationNumber = freezed,
    Object? text = freezed,
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_Transaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      verificationNumber: verificationNumber == freezed
          ? _value.verificationNumber
          : verificationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  _$_Transaction(
      {this.id,
      required this.date,
      required this.account,
      this.verificationNumber,
      required this.text,
      this.description,
      required this.amount});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override

  /// The ID of the category.
  ///
  /// Will be ignored when writing.
  final String? id;
  @override

  /// The date that the transaction was made.
  ///
  /// Must be formatted according to the ISO 8601 standard.
  final String date;
  @override

  /// The account number that the transaction belongs to.
  ///
  /// Max 20 characters.
  final String account;
  @override

  /// The verification number of the transaction.
  ///
  /// Max 20 characters.
  final String? verificationNumber;
  @override

  /// The Text from the bank for the transaction.
  ///
  /// Max 45 characters.
  final String text;
  @override

  /// A description of the transaction.
  ///
  /// Max 255 characters.
  final String? description;
  @override
  final num amount;

  @override
  String toString() {
    return 'Transaction(id: $id, date: $date, account: $account, verificationNumber: $verificationNumber, text: $text, description: $description, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transaction &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.account, account) &&
            const DeepCollectionEquality()
                .equals(other.verificationNumber, verificationNumber) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(verificationNumber),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  factory _Transaction(
      {String? id,
      required String date,
      required String account,
      String? verificationNumber,
      required String text,
      String? description,
      required num amount}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override

  /// The ID of the category.
  ///
  /// Will be ignored when writing.
  String? get id;
  @override

  /// The date that the transaction was made.
  ///
  /// Must be formatted according to the ISO 8601 standard.
  String get date;
  @override

  /// The account number that the transaction belongs to.
  ///
  /// Max 20 characters.
  String get account;
  @override

  /// The verification number of the transaction.
  ///
  /// Max 20 characters.
  String? get verificationNumber;
  @override

  /// The Text from the bank for the transaction.
  ///
  /// Max 45 characters.
  String get text;
  @override

  /// A description of the transaction.
  ///
  /// Max 255 characters.
  String? get description;
  @override
  num get amount;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
