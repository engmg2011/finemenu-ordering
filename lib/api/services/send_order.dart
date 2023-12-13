import 'dart:convert';
import 'package:finemenu/api/api.dart';
import 'package:finemenu/config/config.dart';
import 'package:finemenu/entities/order.dart';

class SendOrder {
  Future<Order> sendOrder(Order order) async {
    Map<String, dynamic> data = await
    Api().post(url:ApiUrl + 'orders', body: jsonEncode(order.toJson()));

    return Order.fromJson(data);
  }
}