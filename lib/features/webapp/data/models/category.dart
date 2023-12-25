import 'package:finemenu/features/webapp/data/models/category_model.dart';
import 'package:finemenu/features/webapp/data/models/locale.dart';

class Category {
  int id;
  String created_at;
  String updated_at;
  int restaurant_id;
  int? parent_id;
  int user_id;
  int? sort;
  List<Locale> locales = [];
  List<Media> media = [];
  List<ItemModel> items = [];

  Category.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        created_at = json['created_at'],
        updated_at = json['updated_at'],
        restaurant_id = json['restaurant_id'],
        parent_id = json['parent_id'],
        user_id = json['user_id'],
        sort = json['sort'] {
    json['locales']
        .forEach((dynamic locale) => {locales.add(Locale.fromJson(locale))});
    json['media']
        .forEach((dynamic mediaObj) => {media.add(Media.fromJson(mediaObj))});
    json['items']
        .forEach((dynamic item) => {items.add(ItemModel.fromJson(item))});
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'created_at': created_at,
        'updated_at': updated_at,
        'restaurant_id': restaurant_id,
        'parent_id': parent_id,
        'user_id': user_id,
        'sort': sort,
        'locales': locales.map((Locale locale) => locale.toJson()).toList(),
        'media': media.map((Media media) => media.toJson()).toList(),
        'items': items.map((ItemModel item) => item.toJson()).toList(),
      };
}
