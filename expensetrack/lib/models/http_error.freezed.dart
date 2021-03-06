// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'http_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HttpError _$HttpErrorFromJson(Map<String, dynamic> json) {
  return _HttpError.fromJson(json);
}

/// @nodoc
mixin _$HttpError {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpErrorCopyWith<HttpError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpErrorCopyWith<$Res> {
  factory $HttpErrorCopyWith(HttpError value, $Res Function(HttpError) then) =
      _$HttpErrorCopyWithImpl<$Res>;
  $Res call({int code, String message});
}

/// @nodoc
class _$HttpErrorCopyWithImpl<$Res> implements $HttpErrorCopyWith<$Res> {
  _$HttpErrorCopyWithImpl(this._value, this._then);

  final HttpError _value;
  // ignore: unused_field
  final $Res Function(HttpError) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HttpErrorCopyWith<$Res> implements $HttpErrorCopyWith<$Res> {
  factory _$$_HttpErrorCopyWith(
          _$_HttpError value, $Res Function(_$_HttpError) then) =
      __$$_HttpErrorCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message});
}

/// @nodoc
class __$$_HttpErrorCopyWithImpl<$Res> extends _$HttpErrorCopyWithImpl<$Res>
    implements _$$_HttpErrorCopyWith<$Res> {
  __$$_HttpErrorCopyWithImpl(
      _$_HttpError _value, $Res Function(_$_HttpError) _then)
      : super(_value, (v) => _then(v as _$_HttpError));

  @override
  _$_HttpError get _value => super._value as _$_HttpError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_HttpError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HttpError implements _HttpError {
  _$_HttpError({required this.code, required this.message});

  factory _$_HttpError.fromJson(Map<String, dynamic> json) =>
      _$$_HttpErrorFromJson(json);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'HttpError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_HttpErrorCopyWith<_$_HttpError> get copyWith =>
      __$$_HttpErrorCopyWithImpl<_$_HttpError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HttpErrorToJson(this);
  }
}

abstract class _HttpError implements HttpError {
  factory _HttpError({required final int code, required final String message}) =
      _$_HttpError;

  factory _HttpError.fromJson(Map<String, dynamic> json) =
      _$_HttpError.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HttpErrorCopyWith<_$_HttpError> get copyWith =>
      throw _privateConstructorUsedError;
}
