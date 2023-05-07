import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return initializeDio(
    baseUrl: 'http://192.168.1.214:8080',
  );
}

Dio initializeDio({
  required String baseUrl,
}) {
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

        return handler.next(options);
      },
    ),
  );

  return dio;
}
