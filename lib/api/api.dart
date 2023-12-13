import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:finemenu/config/config.dart';
import 'package:flutter/foundation.dart';

class Api {
  late Dio dio;
  Future<dynamic> get({required String url, @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'authorization': 'Bearer $BearerToken'
      });
    }
    Response response = await dio.get(url, options: Options(headers: headers));

    if (response.statusCode == 200) {
      return jsonDecode(response.data);
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'authorization': 'Bearer $BearerToken'
      });
    }
    Response response = await dio.post(
      url,
      data: body,
      options: Options(headers: headers),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.data);

      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.data)}');
    }
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      headers.addAll({
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'authorization': 'Bearer $BearerToken'
      });
    }

    print('url = $url body = $body token = $token ');
    Response response = await dio.put(
      url,
      data: body,
      options: Options(headers: headers),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.data);
      print(data);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.data)}');
    }
  }
}
