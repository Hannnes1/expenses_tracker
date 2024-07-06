// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionsFilterState {
  TransactionsOrder get order => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionsFilterStateCopyWith<TransactionsFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsFilterStateCopyWith<$Res> {
  factory $TransactionsFilterStateCopyWith(TransactionsFilterState value,
          $Res Function(TransactionsFilterState) then) =
      _$TransactionsFilterStateCopyWithImpl<$Res, TransactionsFilterState>;
  @useResult
  $Res call(
      {TransactionsOrder order,
      DateTime? startDate,
      DateTime? endDate,
      List<Category> categories});
}

/// @nodoc
class _$TransactionsFilterStateCopyWithImpl<$Res,
        $Val extends TransactionsFilterState>
    implements $TransactionsFilterStateCopyWith<$Res> {
  _$TransactionsFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as TransactionsOrder,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionsFilterImplCopyWith<$Res>
    implements $TransactionsFilterStateCopyWith<$Res> {
  factory _$$TransactionsFilterImplCopyWith(_$TransactionsFilterImpl value,
          $Res Function(_$TransactionsFilterImpl) then) =
      __$$TransactionsFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionsOrder order,
      DateTime? startDate,
      DateTime? endDate,
      List<Category> categories});
}

/// @nodoc
class __$$TransactionsFilterImplCopyWithImpl<$Res>
    extends _$TransactionsFilterStateCopyWithImpl<$Res,
        _$TransactionsFilterImpl>
    implements _$$TransactionsFilterImplCopyWith<$Res> {
  __$$TransactionsFilterImplCopyWithImpl(_$TransactionsFilterImpl _value,
      $Res Function(_$TransactionsFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? categories = null,
  }) {
    return _then(_$TransactionsFilterImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as TransactionsOrder,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$TransactionsFilterImpl implements _TransactionsFilter {
  const _$TransactionsFilterImpl(
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

  @override
  String toString() {
    return 'TransactionsFilterState(order: $order, startDate: $startDate, endDate: $endDate, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsFilterImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsFilterImplCopyWith<_$TransactionsFilterImpl> get copyWith =>
      __$$TransactionsFilterImplCopyWithImpl<_$TransactionsFilterImpl>(
          this, _$identity);
}

abstract class _TransactionsFilter implements TransactionsFilterState {
  const factory _TransactionsFilter(
      {required final TransactionsOrder order,
      required final DateTime? startDate,
      required final DateTime? endDate,
      required final List<Category> categories}) = _$TransactionsFilterImpl;

  @override
  TransactionsOrder get order;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$$TransactionsFilterImplCopyWith<_$TransactionsFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
