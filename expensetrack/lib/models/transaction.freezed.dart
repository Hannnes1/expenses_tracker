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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  /// The ID of the category.
  ///
  /// Will be ignored when writing.
  int? get id => throw _privateConstructorUsedError;

  /// The date that the transaction was made.
  ///
  /// Must be formatted according to the ISO 8601 standard.
  @JsonKey(fromJson: JsonHelpers.dateFromJson, toJson: JsonHelpers.dateToJson)
  DateTime get date => throw _privateConstructorUsedError;

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

  /// The id of the category that the transaction belongs to.
  int? get categoryId => throw _privateConstructorUsedError;

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
      {int? id,
      @JsonKey(fromJson: JsonHelpers.dateFromJson, toJson: JsonHelpers.dateToJson)
          DateTime date,
      String account,
      String? verificationNumber,
      String text,
      String? description,
      num amount,
      int? categoryId});
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
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(fromJson: JsonHelpers.dateFromJson, toJson: JsonHelpers.dateToJson)
          DateTime date,
      String account,
      String? verificationNumber,
      String text,
      String? description,
      num amount,
      int? categoryId});
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, (v) => _then(v as _$_Transaction));

  @override
  _$_Transaction get _value => super._value as _$_Transaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? account = freezed,
    Object? verificationNumber = freezed,
    Object? text = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_$_Transaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  _$_Transaction(
      {this.id,
      @JsonKey(fromJson: JsonHelpers.dateFromJson, toJson: JsonHelpers.dateToJson)
          required this.date,
      required this.account,
      this.verificationNumber,
      required this.text,
      this.description,
      required this.amount,
      this.categoryId});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  /// The ID of the category.
  ///
  /// Will be ignored when writing.
  @override
  final int? id;

  /// The date that the transaction was made.
  ///
  /// Must be formatted according to the ISO 8601 standard.
  @override
  @JsonKey(fromJson: JsonHelpers.dateFromJson, toJson: JsonHelpers.dateToJson)
  final DateTime date;

  /// The account number that the transaction belongs to.
  ///
  /// Max 20 characters.
  @override
  final String account;

  /// The verification number of the transaction.
  ///
  /// Max 20 characters.
  @override
  final String? verificationNumber;

  /// The Text from the bank for the transaction.
  ///
  /// Max 45 characters.
  @override
  final String text;

  /// A description of the transaction.
  ///
  /// Max 255 characters.
  @override
  final String? description;
  @override
  final num amount;

  /// The id of the category that the transaction belongs to.
  @override
  final int? categoryId;

  @override
  String toString() {
    return 'Transaction(id: $id, date: $date, account: $account, verificationNumber: $verificationNumber, text: $text, description: $description, amount: $amount, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.account, account) &&
            const DeepCollectionEquality()
                .equals(other.verificationNumber, verificationNumber) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(verificationNumber),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(categoryId));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  factory _Transaction(
      {final int? id,
      @JsonKey(fromJson: JsonHelpers.dateFromJson, toJson: JsonHelpers.dateToJson)
          required final DateTime date,
      required final String account,
      final String? verificationNumber,
      required final String text,
      final String? description,
      required final num amount,
      final int? categoryId}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override

  /// The ID of the category.
  ///
  /// Will be ignored when writing.
  int? get id => throw _privateConstructorUsedError;
  @override

  /// The date that the transaction was made.
  ///
  /// Must be formatted according to the ISO 8601 standard.
  @JsonKey(fromJson: JsonHelpers.dateFromJson, toJson: JsonHelpers.dateToJson)
  DateTime get date => throw _privateConstructorUsedError;
  @override

  /// The account number that the transaction belongs to.
  ///
  /// Max 20 characters.
  String get account => throw _privateConstructorUsedError;
  @override

  /// The verification number of the transaction.
  ///
  /// Max 20 characters.
  String? get verificationNumber => throw _privateConstructorUsedError;
  @override

  /// The Text from the bank for the transaction.
  ///
  /// Max 45 characters.
  String get text => throw _privateConstructorUsedError;
  @override

  /// A description of the transaction.
  ///
  /// Max 255 characters.
  String? get description => throw _privateConstructorUsedError;
  @override
  num get amount => throw _privateConstructorUsedError;
  @override

  /// The id of the category that the transaction belongs to.
  int? get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

GetTransactionsBody _$GetTransactionsBodyFromJson(Map<String, dynamic> json) {
  return _GetTransactionsBody.fromJson(json);
}

/// @nodoc
mixin _$GetTransactionsBody {
  int get totalCount => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTransactionsBodyCopyWith<GetTransactionsBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTransactionsBodyCopyWith<$Res> {
  factory $GetTransactionsBodyCopyWith(
          GetTransactionsBody value, $Res Function(GetTransactionsBody) then) =
      _$GetTransactionsBodyCopyWithImpl<$Res>;
  $Res call({int totalCount, List<Transaction> transactions});
}

/// @nodoc
class _$GetTransactionsBodyCopyWithImpl<$Res>
    implements $GetTransactionsBodyCopyWith<$Res> {
  _$GetTransactionsBodyCopyWithImpl(this._value, this._then);

  final GetTransactionsBody _value;
  // ignore: unused_field
  final $Res Function(GetTransactionsBody) _then;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc
abstract class _$$_GetTransactionsBodyCopyWith<$Res>
    implements $GetTransactionsBodyCopyWith<$Res> {
  factory _$$_GetTransactionsBodyCopyWith(_$_GetTransactionsBody value,
          $Res Function(_$_GetTransactionsBody) then) =
      __$$_GetTransactionsBodyCopyWithImpl<$Res>;
  @override
  $Res call({int totalCount, List<Transaction> transactions});
}

/// @nodoc
class __$$_GetTransactionsBodyCopyWithImpl<$Res>
    extends _$GetTransactionsBodyCopyWithImpl<$Res>
    implements _$$_GetTransactionsBodyCopyWith<$Res> {
  __$$_GetTransactionsBodyCopyWithImpl(_$_GetTransactionsBody _value,
      $Res Function(_$_GetTransactionsBody) _then)
      : super(_value, (v) => _then(v as _$_GetTransactionsBody));

  @override
  _$_GetTransactionsBody get _value => super._value as _$_GetTransactionsBody;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_$_GetTransactionsBody(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      transactions: transactions == freezed
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetTransactionsBody implements _GetTransactionsBody {
  _$_GetTransactionsBody(
      {required this.totalCount, required final List<Transaction> transactions})
      : _transactions = transactions;

  factory _$_GetTransactionsBody.fromJson(Map<String, dynamic> json) =>
      _$$_GetTransactionsBodyFromJson(json);

  @override
  final int totalCount;
  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'GetTransactionsBody(totalCount: $totalCount, transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTransactionsBody &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  _$$_GetTransactionsBodyCopyWith<_$_GetTransactionsBody> get copyWith =>
      __$$_GetTransactionsBodyCopyWithImpl<_$_GetTransactionsBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetTransactionsBodyToJson(this);
  }
}

abstract class _GetTransactionsBody implements GetTransactionsBody {
  factory _GetTransactionsBody(
      {required final int totalCount,
      required final List<Transaction> transactions}) = _$_GetTransactionsBody;

  factory _GetTransactionsBody.fromJson(Map<String, dynamic> json) =
      _$_GetTransactionsBody.fromJson;

  @override
  int get totalCount => throw _privateConstructorUsedError;
  @override
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GetTransactionsBodyCopyWith<_$_GetTransactionsBody> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultByMonth _$ResultByMonthFromJson(Map<String, dynamic> json) {
  return _ResultByMonth.fromJson(json);
}

/// @nodoc
mixin _$ResultByMonth {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  num get income => throw _privateConstructorUsedError;
  num get expenses => throw _privateConstructorUsedError;
  bool get internal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultByMonthCopyWith<ResultByMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultByMonthCopyWith<$Res> {
  factory $ResultByMonthCopyWith(
          ResultByMonth value, $Res Function(ResultByMonth) then) =
      _$ResultByMonthCopyWithImpl<$Res>;
  $Res call({int year, int month, num income, num expenses, bool internal});
}

/// @nodoc
class _$ResultByMonthCopyWithImpl<$Res>
    implements $ResultByMonthCopyWith<$Res> {
  _$ResultByMonthCopyWithImpl(this._value, this._then);

  final ResultByMonth _value;
  // ignore: unused_field
  final $Res Function(ResultByMonth) _then;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? income = freezed,
    Object? expenses = freezed,
    Object? internal = freezed,
  }) {
    return _then(_value.copyWith(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as num,
      expenses: expenses == freezed
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as num,
      internal: internal == freezed
          ? _value.internal
          : internal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ResultByMonthCopyWith<$Res>
    implements $ResultByMonthCopyWith<$Res> {
  factory _$$_ResultByMonthCopyWith(
          _$_ResultByMonth value, $Res Function(_$_ResultByMonth) then) =
      __$$_ResultByMonthCopyWithImpl<$Res>;
  @override
  $Res call({int year, int month, num income, num expenses, bool internal});
}

/// @nodoc
class __$$_ResultByMonthCopyWithImpl<$Res>
    extends _$ResultByMonthCopyWithImpl<$Res>
    implements _$$_ResultByMonthCopyWith<$Res> {
  __$$_ResultByMonthCopyWithImpl(
      _$_ResultByMonth _value, $Res Function(_$_ResultByMonth) _then)
      : super(_value, (v) => _then(v as _$_ResultByMonth));

  @override
  _$_ResultByMonth get _value => super._value as _$_ResultByMonth;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? income = freezed,
    Object? expenses = freezed,
    Object? internal = freezed,
  }) {
    return _then(_$_ResultByMonth(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as num,
      expenses: expenses == freezed
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as num,
      internal: internal == freezed
          ? _value.internal
          : internal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultByMonth implements _ResultByMonth {
  _$_ResultByMonth(
      {required this.year,
      required this.month,
      required this.income,
      required this.expenses,
      required this.internal});

  factory _$_ResultByMonth.fromJson(Map<String, dynamic> json) =>
      _$$_ResultByMonthFromJson(json);

  @override
  final int year;
  @override
  final int month;
  @override
  final num income;
  @override
  final num expenses;
  @override
  final bool internal;

  @override
  String toString() {
    return 'ResultByMonth(year: $year, month: $month, income: $income, expenses: $expenses, internal: $internal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultByMonth &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.income, income) &&
            const DeepCollectionEquality().equals(other.expenses, expenses) &&
            const DeepCollectionEquality().equals(other.internal, internal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(income),
      const DeepCollectionEquality().hash(expenses),
      const DeepCollectionEquality().hash(internal));

  @JsonKey(ignore: true)
  @override
  _$$_ResultByMonthCopyWith<_$_ResultByMonth> get copyWith =>
      __$$_ResultByMonthCopyWithImpl<_$_ResultByMonth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultByMonthToJson(this);
  }
}

abstract class _ResultByMonth implements ResultByMonth {
  factory _ResultByMonth(
      {required final int year,
      required final int month,
      required final num income,
      required final num expenses,
      required final bool internal}) = _$_ResultByMonth;

  factory _ResultByMonth.fromJson(Map<String, dynamic> json) =
      _$_ResultByMonth.fromJson;

  @override
  int get year => throw _privateConstructorUsedError;
  @override
  int get month => throw _privateConstructorUsedError;
  @override
  num get income => throw _privateConstructorUsedError;
  @override
  num get expenses => throw _privateConstructorUsedError;
  @override
  bool get internal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResultByMonthCopyWith<_$_ResultByMonth> get copyWith =>
      throw _privateConstructorUsedError;
}
