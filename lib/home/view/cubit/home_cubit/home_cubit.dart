import 'package:finemenu/constant/end_points.dart';
import 'package:finemenu/helpers/app_state.dart';
import 'package:finemenu/home/view/cubit/home_cubit/home_state.dart';
import 'package:finemenu/models/addon.dart';
import 'package:finemenu/models/category.dart';
import 'package:finemenu/models/item.dart';
import 'package:finemenu/models/media.dart';
import 'package:finemenu/models/order.dart';
import 'package:finemenu/models/order_line.dart';
import 'package:finemenu/models/price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  String descriptionFit(String description, [int maxLength = 24]) {
    return (description == null)
        ? ''
        : description.substring(
            0, description.length > maxLength ? maxLength : description.length);
  }

  Price lowestPrice(List<Price> prices) {
    return prices.reduce(
        (Price curr, Price next) => curr.price < next.price ? curr : next);
  }

  String asset(String path, String width, String height) {
    return path.replaceAll('storage/', '${AppEndPoints.baseUrl}/storage/');
    // path = path.replaceAll('storage/', '');
    // return '$BaseUrl:8888/unsafe/${width}x$height/$path';
  }

  getCategory(int categoryId, List<Category> categories) {
    if (categories.isNotEmpty) {
      return categories
          .where((Category element) => element.id == categoryId)
          .toList()
          .first;
    }
  }

  num getOrderLinePrice(OrderLine _orderLine) {
    num price = 0;
    if (_orderLine.prices.isNotEmpty) {
      num addonsPrice = 0;
      _orderLine.addons.forEach((Addon addon) {
        addonsPrice += addon.price;
      });
      price = (_orderLine.prices.first.price + addonsPrice) * _orderLine.count;
    }
    return price;
  }

  num calculateOrderTotalPrice(Order order) {
    num totalPrice = 0;
    order.order_lines.forEach((OrderLine _ol) {
      totalPrice += getOrderLinePrice(_ol);
    });
    return totalPrice;
  }

  // getOrderLineIndex(Store<AppState> _store, Item _item, int selectedPriceIndex) {
  //   if (_store.state.order == null || _store.state.order.order_lines.isEmpty)
  //     return false;
  //   final List<OrderLine> ols = _store.state.order.order_lines;
  //   for (int i = 0; i < ols.length; i++) {
  //     if (ols[i].item.id == _item.id) {
  //       if (ols[i].prices.isEmpty && _item.prices.isEmpty) return i;
  //       if (ols[i].prices[0].price == _item.prices[selectedPriceIndex].price &&
  //           ols[i].addons.isEmpty) {
  //         return i;
  //       }
  //     }
  //   }
  //   return false;
  // }

  // --------------------------------------------------------------------

  // void updateOrderLineCallBack(_store, OrderLine? orderLine, int index) {
  //   final Order newOrder = _store.state.order;
  //   if (orderLine == null)
  //     // Remove order line
  //     newOrder.order_lines.removeAt(index);
  //   else
  //     // Change order line count
  //     newOrder.order_lines[index] = orderLine;
  //   final num totalPrice = calculateOrderTotalPrice(newOrder);
  //   newOrder.totalPrice = totalPrice;
  //   newOrder.prices.first.price = totalPrice;
  //   _store.dispatch(SetStoreOrder(newOrder));   // emit state
  // }

  // ----------------------------------------------------------

  // Order prepareOrder(Store _store, Item _item, selectedPriceIndex, checkedAddons) {
  //   final Order order = _store.state.order ?? Order.fromJson({
  //     'orderable_id': _store.state.restaurant.id,
  //     'order_lines': []});
  //   final OrderLine ol = OrderLine.fromJson(
  //       {'item_id': _item.id, 'count': 1, 'item': _item.toJson()});
  //   if (_item.prices.isNotEmpty) {
  //     if (selectedPriceIndex != null)
  //       ol.prices.add(_item.prices[selectedPriceIndex]);
  //     else
  //       ol.prices.add(_item.prices.first);
  //     ol.prices.first.id = null;
  //     // empty prices for item as no need
  //     ol.item.prices = [];
  //   }
  //   //TODO :: Add selected discounts
  //   for (int checkedIndex = 0;
  //   checkedIndex < checkedAddons.length;
  //   checkedIndex++) {
  //     if (checkedAddons[checkedIndex]) {
  //       final Addon addonCopy = _item.addons[checkedIndex];
  //       addonCopy.id = null;
  //       ol.addons.add(addonCopy);
  //     }
  //   }
  //   order.order_lines.add(ol);
  //   final num orderPrice = calculateOrderTotalPrice(order);
  //   order.totalPrice = orderPrice;
  //   order.prices = [];
  //   order.prices
  //       .add(Price.fromJson({'price': orderPrice, 'user_id': 1, 'locales': []}));
  //   order.prices.first.id = null;
  //   return order;
  // }

  int getFirstItemIndex(int categoryId, AppState state) {
    int firstIndex = 0;
    int index = 0;
    for (final Item item in state.items) {
      if (item.categoryId == categoryId) {
        firstIndex = index;
        break;
      }
      index++;
    }
    return firstIndex;
  }

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
}
