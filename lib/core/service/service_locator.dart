import 'dart:developer';
import 'package:dio/dio.dart';
import '../constant/end_points.dart';

Dio dioSetUp() {

  Dio dio = Dio();
  dio
    ..options.baseUrl = AppEndPoints.baseUrl
    ..options.connectTimeout = const Duration(seconds: 40)
    ..options.receiveTimeout = const Duration(seconds: 40);

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    requestHeader: true,
    responseHeader: true,
    request: true,
    requestBody: true,
    logPrint: (object) {
      log(object.toString());
    },
  ));

  return dio;
}
