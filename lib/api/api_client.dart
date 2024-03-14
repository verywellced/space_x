import 'package:dio/dio.dart';

class ApiClient {
  late Dio dio;
  static const String baseUrl = 'https://api.spacexdata.com/v4/launches/';

  ApiClient() {
    dio = Dio()
      ..options.baseUrl = baseUrl
      ..interceptors.add(QueuedInterceptorsWrapper(
        onRequest: ((options, handler) => handler.next(options)),
        onError: (error, handler) => handler.reject(error),
      ));
  }
}
