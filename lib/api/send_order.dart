import 'dart:convert';

import 'package:finemenu/config/config.dart';
import 'package:finemenu/entities/order.dart';
import 'package:http/http.dart' as http;

sendOrder(Order order) async {
  Map<String, String> headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'authorization': 'Bearer ' + BearerToken
  };

  final url = Uri.parse(ApiUrl + 'orders');

  var response =
      await http.post(url, headers: headers, body: jsonEncode(order.toJson()));

  if (response.statusCode == 200) {
    print(response.statusCode);
    return true;
  }
}
