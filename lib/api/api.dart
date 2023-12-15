import 'package:dio/dio.dart';
import 'package:finemenu/constant/end_points.dart';
import 'package:flutter/foundation.dart';

class Api {
  late final Dio _dio;

  Future<dynamic> get(
      {required String endPoint, @required String? token}) async {
    Response response = await _dio.get(endPoint,
        options: Options(headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'authorization': 'Bearer ${AppEndPoints.bearerToken}'
        }));

    if (response.statusCode == 200) {
      return (response.data);
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post(
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
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${response.data}');
    }
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
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${response.data}');
    }
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
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${response.data}');
    }
  }

  Future<dynamic> delete({required String endPoint, String? token}) async {
    Response response = await _dio.delete(endPoint,
        options: Options(headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'authorization': 'Bearer ${AppEndPoints.bearerToken}'
        }));
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${response.data}');
    }
  }
}

