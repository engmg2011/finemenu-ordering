import 'package:finemenu/features/webapp/data/models/order_line.dart';
import 'package:json_annotation/json_annotation.dart';
import 'category_model.dart';
import 'item_details_model.dart';

@JsonSerializable()
class Order {
  int? id;
  String? note;
  String? status;
  num? totalPrice;
  List<Price> prices = [];
  List<OrderLine> order_lines = [];
  List<Discount> discounts = [];
  int? orderable_id;
  String? orderable_type;

  Order.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        note = data['note'],
        totalPrice = data['totalPrice'],
        status = data['status'],
        orderable_id = data['orderable_id'] ?? 1,
        orderable_type = data['orderable_type'] ?? '\\App\\Models\\Restaurant' {
    if (data['discounts'] != null) {
      data['discounts'].forEach(
          (dynamic discount) => {discounts.add(Discount.fromJson(discount))});
    }
    if (data['order_lines'] != null) {
      data['order_lines']
          .forEach((ol) => {order_lines.add(OrderLine.fromJson(ol))});
    }
    if (data['prices'] != null) {
      data['prices']
          .forEach((dynamic price) => {prices.add(Price.fromJson(price))});
    }
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'note': note,
        'totalPrice': totalPrice,
        'status': status,
        'discounts':
            discounts.map((Discount discount) => discount.toJson()).toList(),
        'order_lines': order_lines.map((OrderLine ol) => ol.toJson()).toList(),
        'prices': prices.map((Price price) => price.toJson()).toList(),
        'orderable_id': orderable_id,
        'orderable_type': orderable_type,
      };
}
