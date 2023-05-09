import 'package:dio/dio.dart';
import 'package:expensetrack/core/services/logger.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return initializeDio(
    baseUrl: 'http://192.168.1.214:5000',
    logger: ref.watch(loggerProvider('Dio')),
  );
}

Dio initializeDio({required String baseUrl, required Logger logger}) {
  final dio = Dio();

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
        options.baseUrl = baseUrl; // Base url must be set before anything else to avoid errors.

        const token = 'Re5Pbbfl0bxn12Uar7exGrDwsP9N';

        options.headers.addAll({
          'authorization': 'Bearer $token',
        });

        // The server should always respond with JSON.
        options.responseType = ResponseType.json;

        logger.d(_requestLogString(options));

        return handler.next(options);
      },
      onError: (DioError error, ErrorInterceptorHandler handler) async {
        logger.d(_errorLogString(error));

        return handler.next(error);
      },
      onResponse: (Response<dynamic> response, ResponseInterceptorHandler handler) {
        logger.d(_responseLogString(response));

        return handler.next(response);
      },
    ),
  );

  return dio;
}

const _startSeparator = '------------------------------------------------------------------';
const _endSeparator = '------------------------------------------------------------------------------------------------';

/// Returns string for logging error in interceptor.
String _errorLogString(DioError error) {
  return '''ERROR ---$_startSeparator
got error response: uri: ${error.requestOptions.uri} | method: ${error.requestOptions.method}
status code: ${error.response?.statusCode}
headers: ${error.response?.headers.toString()}
body: ${error.response?.data}
$_endSeparator''';
}

/// Returns string for logging request in interceptor.
String _requestLogString(RequestOptions options) {
  return '''REQUEST -$_startSeparator
sending request: uri: ${options.uri} | method: ${options.method}
headers: ${options.headers.toString()}
body: ${options.data is Map ? options.data?.keys : options.data}
$_endSeparator''';
}

/// Returns string for logging response in interceptor.
String _responseLogString(Response<dynamic> response) {
  var body = response.data.toString();

  // Truncate the string to avoid the app freezing during development.
  if (body.length > 1000) {
    body = '${body.substring(0, 1000)}... (truncated)';
  }

  return '''RESPONSE $_startSeparator
got response: uri: ${response.requestOptions.uri} | method: ${response.requestOptions.method}
status code: ${response.statusCode}
headers: ${response.headers.toString()}
body: $body
$_endSeparator''';
}
