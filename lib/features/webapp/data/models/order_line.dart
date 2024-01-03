import 'package:finemenu/features/webapp/data/models/category_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'item_details_model.dart';

@JsonSerializable()
class OrderLine {
  int? id;
  int itemId;
  String? note;
  int count;
  ItemDetailsModel item;
  List<PriceModel> prices = [];
  double? totalPrice;
  List<Addon> addons = [];
  List<Discount> discounts = [];

  OrderLine.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        itemId = data['item_id'],
        totalPrice = data['totalPrice'],
        note = data['note'],
        count = data['count'],
        item = ItemDetailsModel.fromJson(data['item']) {
    if (data['discounts'] != null) {
      data['discounts'].forEach(
          (dynamic discount) => {discounts.add(Discount.fromJson(discount))});
    }
    if (data['addons'] != null) {
      data['addons']
          .forEach((dynamic addon) => {addons.add(Addon.fromJson(addon))});
    }
    if (data['prices'] != null) {
      data['prices']
          .forEach((dynamic price) => {prices.add(PriceModel.fromJson(price))});
    }
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'item_id': itemId,
        'note': note,
        'count': count,
        'totalPrice': totalPrice,
        'item': item.toJson(),
        'discounts':
            discounts.map((Discount discount) => discount.toJson()).toList(),
        'addons': addons.map((Addon addon) => addon.toJson()).toList(),
        'prices': prices.map((PriceModel price) => price.toJson()).toList(),
      };
}
