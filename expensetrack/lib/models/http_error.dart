import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_error.freezed.dart';
part 'http_error.g.dart';

@freezed
class HttpError with _$HttpError {
  factory HttpError({
    required int code,
    required String message,
  }) = _HttpError;

  factory HttpError.fromJson(Map<String, dynamic> json) => _$HttpErrorFromJson(json);
}
