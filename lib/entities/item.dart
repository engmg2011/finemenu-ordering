

import 'package:finemenu/entities/addon.dart';
import 'package:finemenu/entities/discount.dart';
import 'package:finemenu/entities/locale.dart';
import 'package:finemenu/entities/media.dart';
import 'package:finemenu/entities/price.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Item {
  int id;
  int categoryId;
  int? sort;
  List<Locale> locales = [];
  List<Media> media = [];
  List<Price> prices = [];
  List<Addon> addons = [];
  List<Discount> discounts = [];

  Item.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        categoryId = data['category_id'],
        sort = data['sort']{
    data["locales"].forEach((dynamic locale) => {locales.add(Locale.fromJson(locale))});
    data["media"].forEach((dynamic mediaObj) => {media.add(Media.fromJson(mediaObj))});
    data['prices'].forEach((dynamic price) => {prices.add(Price.fromJson(price))});
    data['discounts'].forEach((dynamic discount) => {discounts.add(Discount.fromJson(discount))});
    data['addons'].forEach((dynamic addon) => {addons.add(Addon.fromJson(addon))});
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'category_id': categoryId,
    'sort': sort,
    'locales': locales.map((Locale locale) => locale.toJson()).toList(),
    'prices': prices.map((Price price) => price.toJson()).toList(),
    'discounts': discounts.map((Discount discount) => discount.toJson()).toList(),
    'addons': addons.map((Addon addon) => addon.toJson()).toList(),
    'media': media.map((Media media) => media.toJson()).toList(),
  };

}
