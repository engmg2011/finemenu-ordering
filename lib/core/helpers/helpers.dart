import 'package:finemenu/features/webapp/data/models/category_model.dart';
import 'package:finemenu/features/webapp/data/models/order.dart';
import 'package:finemenu/features/webapp/data/models/order_line.dart';
import 'package:flutter/material.dart';

Color getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll('#', '');
  if (hexColor.length == 6) {
    return Color(int.parse('0xFF$hexColor'));
  }
  if (hexColor.length == 8) {
    final String h = hexColor.substring(0, 6);
    return Color(int.parse('0xFF$h'));
  }
  return const Color(0xFF000000);
}

List<Media> mediaBySlug(List<Media> media, String slug) {
  return media.where((Media m) => m.slug == slug).toList();
}

PriceModel lowestPrice(List<PriceModel> prices) {
  return prices.reduce((PriceModel curr, PriceModel next) =>
      curr.price! < next.price! ? curr : next);
}

String asset(String path) {
  return path.replaceAll('storage/', 'http://api.finemenu.net/storage/');
}

// getCategory(int categoryId, List<Category> categories) {
//   if (categories.isNotEmpty) {
//     return categories
//         .where((Category element) => element.id == categoryId)
//         .toList()
//         .first;
//   }
// }

// num getOrderLinePrice(OrderLine _orderLine) {
//   num price = 0;
//   if (_orderLine.prices.isNotEmpty) {
//     num addonsPrice = 0;
//     _orderLine.addons.forEach((Addon addon) {
//       addonsPrice += addon.price!;
//     });
//     price = (_orderLine.prices.first.price + addonsPrice) * _orderLine.count;
//   }
//   return price;
// }

// num calculateOrderTotalPrice(Order order) {
//   num totalPrice = 0;
//   order.order_lines.forEach((OrderLine _ol) {
//     totalPrice += getOrderLinePrice(_ol);
//   });
//   return totalPrice;
// }
