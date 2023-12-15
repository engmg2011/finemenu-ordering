import 'package:finemenu/api/api.dart';
import 'package:finemenu/constant/end_points.dart';
import 'package:finemenu/models/order.dart';

class SendOrder {
  Future<Order> sendOrder(Order order) async {
    Map<String, dynamic> data = await Api().post(
        endPoint: AppEndPoints.baseUrl + AppEndPoints.order,
        data: order.toJson());

    return Order.fromJson(data);
  }
}
