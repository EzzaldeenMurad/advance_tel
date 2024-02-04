import 'package:dio/dio.dart';

Dio createDio() {
  var dio = Dio(BaseOptions(
      baseUrl: 'http://10.0.2.2:8000/api/',
      responseType: ResponseType.plain,
      headers: {
        'Accept': 'application/json',
        'Content-type': 'application/json',
      }));

  return dio;
}