// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

class CategoryModel {
  final int? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? restaurantId;
  final dynamic parentId;
  final int? userId;
  final dynamic sort;
  final List<ItemDetailsModel>? items;
  final List<LocaleElement>? locales;
  final List<Media>? media;

  CategoryModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.restaurantId,
    this.parentId,
    this.userId,
    this.sort,
    this.items,
    this.locales,
    this.media,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        restaurantId: json["restaurant_id"],
        parentId: json["parent_id"],
        userId: json["user_id"],
        sort: json["sort"],
        items: json["items"] == null
            ? []
            : List<ItemDetailsModel>.from(
                json["items"]!.map((x) => ItemDetailsModel.fromJson(x))),
        locales: json["locales"] == null
            ? []
            : List<LocaleElement>.from(
                json["locales"]!.map((x) => LocaleElement.fromJson(x))),
        media: json["media"] == null
            ? []
            : List<Media>.from(json["media"]!.map((x) => Media.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "restaurant_id": restaurantId,
        "parent_id": parentId,
        "user_id": userId,
        "sort": sort,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "locales": locales == null
            ? []
            : List<dynamic>.from(locales!.map((x) => x.toJson())),
        "media": media == null
            ? []
            : List<dynamic>.from(media!.map((x) => x.toJson())),
      };
}

class ItemDetailsModel {
  final int? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? categoryId;
  final int? userId;
  final int? sort;
  final List<LocaleElement>? locales;
  final List<Addon>? addons;
  final List<Discount>? discounts;
  final List<Media>? media;
  late final List<PriceModel>? prices;

  ItemDetailsModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.categoryId,
    this.userId,
    this.sort,
    this.locales,
    this.addons,
    this.discounts,
    this.media,
    this.prices,
  });

  factory ItemDetailsModel.fromJson(Map<String, dynamic> json) => ItemDetailsModel(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        categoryId: json["category_id"],
        userId: json["user_id"],
        sort: json["sort"],
        locales: json["locales"] == null
            ? []
            : List<LocaleElement>.from(
                json["locales"]!.map((x) => LocaleElement.fromJson(x))),
        addons: json["addons"] == null
            ? []
            : List<Addon>.from(json["addons"]!.map((x) => Addon.fromJson(x))),
        discounts: json["discounts"] == null
            ? []
            : List<Discount>.from(
                json["discounts"]!.map((x) => Discount.fromJson(x))),
        media: json["media"] == null
            ? []
            : List<Media>.from(json["media"]!.map((x) => Media.fromJson(x))),
        prices: json["prices"] == null
            ? []
            : List<PriceModel>.from(
                json["prices"]!.map((x) => PriceModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "category_id": categoryId,
        "user_id": userId,
        "sort": sort,
        "locales": locales == null
            ? []
            : List<dynamic>.from(locales!.map((x) => x.toJson())),
        "addons": addons == null
            ? []
            : List<dynamic>.from(addons!.map((x) => x.toJson())),
        "discounts": discounts == null
            ? []
            : List<dynamic>.from(discounts!.map((x) => x.toJson())),
        "media": media == null
            ? []
            : List<dynamic>.from(media!.map((x) => x.toJson())),
        "prices": prices == null
            ? []
            : List<dynamic>.from(prices!.map((x) => x.toJson())),
      };
}

class Addon {
  late final int? id;
  final int? addonableId;
  final String? addonableType;
  final double? price;
  final int? multiple;
  final dynamic max;
  final int? userId;
  final dynamic parentId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<LocaleElement>? locales;
  final List<dynamic>? children;

  Addon({
    this.id,
    this.addonableId,
    this.addonableType,
    this.price,
    this.multiple,
    this.max,
    this.userId,
    this.parentId,
    this.createdAt,
    this.updatedAt,
    this.locales,
    this.children,
  });

  factory Addon.fromJson(Map<String, dynamic> json) => Addon(
        id: json["id"],
        addonableId: json["addonable_id"],
        addonableType: json["addonable_type"],
        price: json["price"]?.toDouble() ?? 0,
        multiple: json["multiple"],
        max: json["max"],
        userId: json["user_id"],
        parentId: json["parent_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        locales: json["locales"] == null
            ? []
            : List<LocaleElement>.from(
                json["locales"]!.map((x) => LocaleElement.fromJson(x))),
        children: json["children"] == null
            ? []
            : List<dynamic>.from(json["children"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "addonable_id": addonableId,
        "addonable_type": addonableType,
        "price": price,
        "multiple": multiple,
        "max": max,
        "user_id": userId,
        "parent_id": parentId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "locales": locales == null
            ? []
            : List<dynamic>.from(locales!.map((x) => x.toJson())),
        "children":
            children == null ? [] : List<dynamic>.from(children!.map((x) => x)),
      };
}

class LocaleElement {
  final int? id;
  final String? name;
  final Description? description;
  final LocaleEnum? locale;

  LocaleElement({
    this.id,
    this.name,
    this.description,
    this.locale,
  });

  factory LocaleElement.fromJson(Map<String, dynamic> json) => LocaleElement(
        id: json["id"],
        name: json["name"],
        description: descriptionValues.map[json["description"]],
        locale: localeEnumValues.map[json["locale"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": descriptionValues.reverse[description],
        "locale": localeEnumValues.reverse[locale],
      };
}

enum Description {
  BACON_BURGER_WITH_CHEESE_SO_TASTY,
  CHAMP_BURGER_WITH_CHIPS_HALAL_VERY_TASTY_TO_TASTE,
  EMPTY
}

final descriptionValues = EnumValues({
  "Bacon burger with cheese so tasty":
      Description.BACON_BURGER_WITH_CHEESE_SO_TASTY,
  "Champ burger with chips halal very tasty to taste":
      Description.CHAMP_BURGER_WITH_CHIPS_HALAL_VERY_TASTY_TO_TASTE,
  "": Description.EMPTY
});

enum LocaleEnum { EN }

final localeEnumValues = EnumValues({"en": LocaleEnum.EN});

class Discount {
  final int? id;
  final int? discountableId;
  final String? discountableType;
  final int? amount;
  final String? type;
  final dynamic from;
  final dynamic to;
  final int? userId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<LocaleElement>? locales;

  Discount({
    this.id,
    this.discountableId,
    this.discountableType,
    this.amount,
    this.type,
    this.from,
    this.to,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.locales,
  });

  factory Discount.fromJson(Map<String, dynamic> json) => Discount(
        id: json["id"],
        discountableId: json["discountable_id"],
        discountableType: json["discountable_type"],
        amount: json["amount"],
        type: json["type"],
        from: json["from"],
        to: json["to"],
        userId: json["user_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        locales: json["locales"] == null
            ? []
            : List<LocaleElement>.from(
                json["locales"]!.map((x) => LocaleElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "discountable_id": discountableId,
        "discountable_type": discountableType,
        "amount": amount,
        "type": type,
        "from": from,
        "to": to,
        "user_id": userId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "locales": locales == null
            ? []
            : List<dynamic>.from(locales!.map((x) => x.toJson())),
      };
}

class Media {
  final int? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? src;
  final String? type;
  final String? mediableType;
  final int? mediableId;
  final int? userId;
  final dynamic slug;

  Media({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.src,
    this.type,
    this.mediableType,
    this.mediableId,
    this.userId,
    this.slug,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        src: json["src"],
        type: json["type"],
        mediableType: json["mediable_type"],
        mediableId: json["mediable_id"],
        userId: json["user_id"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "src": src,
        "type": type,
        "mediable_type": mediableType,
        "mediable_id": mediableId,
        "user_id": userId,
        "slug": slug,
      };
}

class PriceModel {
  late final int? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final num? price;
  final String? priceableType;
  final int? priceableId;
  final int? userId;
  final List<LocaleElement>? locales;

  PriceModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.price,
    this.priceableType,
    this.priceableId,
    this.userId,
    this.locales,
  });

  factory PriceModel.fromJson(Map<String, dynamic> json) => PriceModel(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        price: json["price"],
        priceableType: json["priceable_type"],
        priceableId: json["priceable_id"],
        userId: json["user_id"],
        locales: json["locales"] == null
            ? []
            : List<LocaleElement>.from(
                json["locales"]!.map((x) => LocaleElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "price": price,
        "priceable_type": priceableType,
        "priceable_id": priceableId,
        "user_id": userId,
        "locales": locales == null
            ? []
            : List<dynamic>.from(locales!.map((x) => x.toJson())),
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

class ImageTextModel {
  final String imageUrl;
  final String text;

  ImageTextModel({required this.imageUrl, required this.text});
}

List<ImageTextModel> data = [
  ImageTextModel(imageUrl: 'assets/images/food/1.jpg', text: 'Burger'),
  ImageTextModel(imageUrl: 'assets/images/food-sm/3.jpeg', text: 'Pizza'),
  ImageTextModel(imageUrl: 'assets/images/food/sandwich.png', text: 'Sandwich'),
  ImageTextModel(imageUrl: 'assets/images/food/noodles.png', text: 'Dish'),
  ImageTextModel(
      imageUrl: 'assets/images/food/ice_cream.png', text: 'Desserts'),
  ImageTextModel(imageUrl: 'assets/images/food/6.jpg', text: 'Fruits'),
  ImageTextModel(imageUrl: 'assets/images/food/cola.png', text: 'Drinks'),
  // Add more instances as needed
];
