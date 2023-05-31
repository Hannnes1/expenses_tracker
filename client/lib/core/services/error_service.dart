import 'dart:io';

import 'package:dio/dio.dart';
import 'package:expensetrack/core/services/logger.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'error_service.g.dart';

@riverpod
ErrorService errorService(ErrorServiceRef ref) {
  return ErrorService(ref.watch(loggerProvider('ErrorService')));
}

/// Service for handling and providing a consistent way of handling them.
class ErrorService {
  ErrorService(this._log);

  final Logger _log;

  /// Return a standardized exeception based on the input.
  Future<Exception> httpHandler(DioError exception) async {
    final statusCode = exception.response?.statusCode;

    late Exception parsedException;
    if (exception.error is SocketException || statusCode == null) {
      parsedException = ServerConnectionException();
    } else if (statusCode >= 400 && statusCode < 500) {
      parsedException = UnknownClientException();
    } else if (statusCode >= 500 && statusCode < 600) {
      parsedException = UnknownServerException();
    } else {
      parsedException = UnknownException();
    }

    final requestId = exception.requestOptions.headers['X-Request-ID'];

    _log.e(
      parsedException.toString() + (requestId == null ? '' : ' - Request ID: $requestId'),
      exception,
      exception.stackTrace,
    );

    return parsedException;
  }
}

class ServerConnectionException implements Exception {
  @override
  String toString() {
    return 'ServerConnectionException: Could not connect to the server';
  }
}

class UnknownClientException implements Exception {
  @override
  String toString() {
    return 'UnknownClientException: An unknown client error occured';
  }
}

class UnknownServerException implements Exception {
  @override
  String toString() {
    return 'UnknownServerException: An unknown server error occured';
  }
}

class UnknownException implements Exception {
  @override
  String toString() {
    return 'UnknownException: An unknown error occured';
  }
}

class UserAlreadyExistsException implements Exception {
  @override
  String toString() {
    return 'UserAlreadyExistsException: The specified user already exists';
  }
}
