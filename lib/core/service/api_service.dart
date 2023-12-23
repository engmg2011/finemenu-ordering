import 'package:dio/dio.dart';
import 'package:finemenu/core/constant/end_points.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  late final Dio _dio;
  ApiService(this._dio);

  Future<Response> get(
      {required String endPoint, @required String? token}) async {
    Response response = await _dio.get(endPoint,
        options: Options(headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'authorization': 'Bearer ${AppEndPoints.bearerToken}'
        }));
    return response;
  }

  Future<Response> post(
      {required String endPoint,
      @required dynamic data,
      @required String? token}) async {
    Response response = await _dio.post(
      endPoint,
      data: data,
      options: Options(headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'authorization': 'Bearer ${AppEndPoints.bearerToken}'
      }),
    );
    return response;
  }

  Future<dynamic> put(
      {required String endPoint,
      @required dynamic data,
      @required String? token}) async {
    Response response = await _dio.put(
      endPoint,
      data: data,
      options: Options(headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'authorization': 'Bearer ${AppEndPoints.bearerToken}'
      }),
    );
    return response;
  }

  Future<dynamic> patch(
      {required String endPoint, dynamic data, String? token}) async {
    Response response = await _dio.patch(endPoint,
        data: data,
        options: Options(headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'authorization': 'Bearer ${AppEndPoints.bearerToken}'
        }));
    return response;
  }

  Future<dynamic> delete({required String endPoint, String? token}) async {
    Response response = await _dio.delete(endPoint,
        options: Options(headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'authorization': 'Bearer ${AppEndPoints.bearerToken}'
        }));
    return response;
  }
}
