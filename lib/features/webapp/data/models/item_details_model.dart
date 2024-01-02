import 'category_model.dart';

class ItemDetailsModel {
  final int? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? categoryId;
  final int? userId;
  final int? sort;
  final List<Locale>? locales;
  final List<Media>? media;
  final List<Price>? prices;
  final List<Discount>? discounts;
  final List<Addon>? addons;

  ItemDetailsModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.categoryId,
    this.userId,
    this.sort,
    this.locales,
    this.media,
    this.prices,
    this.discounts,
    this.addons,
  });
  factory ItemDetailsModel.fromJson(Map<String, dynamic> json) =>
      ItemDetailsModel(
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
            : List<Locale>.from(
                json["locales"]!.map((x) => Locale.fromJson(x))),
        media: json["media"] == null
            ? []
            : List<Media>.from(json["media"]!.map((x) => Media.fromJson(x))),
        prices: json["prices"] == null
            ? []
            : List<Price>.from(json["prices"]!.map((x) => Price.fromJson(x))),
        discounts: json["discounts"] == null
            ? []
            : List<Discount>.from(
                json["discounts"]!.map((x) => Discount.fromJson(x))),
        addons: json["addons"] == null
            ? []
            : List<Addon>.from(json["addons"]!.map((x) => Addon.fromJson(x))),
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
        "media": media == null
            ? []
            : List<dynamic>.from(media!.map((x) => x.toJson())),
        "prices": prices == null
            ? []
            : List<dynamic>.from(prices!.map((x) => x.toJson())),
        "discounts": discounts == null
            ? []
            : List<dynamic>.from(discounts!.map((x) => x.toJson())),
        "addons": addons == null
            ? []
            : List<dynamic>.from(addons!.map((x) => x.toJson())),
      };
}

// class Addon {
//   final int? id;
//   final int? addonableId;
//   final String? addonableType;
//   final int? price;
//   final int? multiple;
//   final dynamic max;
//   final int? userId;
//   final dynamic parentId;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;
//   final List<Locale>? locales;
//
//   Addon({
//     this.id,
//     this.addonableId,
//     this.addonableType,
//     this.price,
//     this.multiple,
//     this.max,
//     this.userId,
//     this.parentId,
//     this.createdAt,
//     this.updatedAt,
//     this.locales,
//   });
//
//   factory Addon.fromRawJson(String str) => Addon.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory Addon.fromJson(Map<String, dynamic> json) => Addon(
//         id: json["id"],
//         addonableId: json["addonable_id"],
//         addonableType: json["addonable_type"],
//         price: json["price"],
//         multiple: json["multiple"],
//         max: json["max"],
//         userId: json["user_id"],
//         parentId: json["parent_id"],
//         createdAt: json["created_at"] == null
//             ? null
//             : DateTime.parse(json["created_at"]),
//         updatedAt: json["updated_at"] == null
//             ? null
//             : DateTime.parse(json["updated_at"]),
//         locales: json["locales"] == null
//             ? []
//             : List<Locale>.from(
//                 json["locales"]!.map((x) => Locale.fromJson(x))),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "addonable_id": addonableId,
//         "addonable_type": addonableType,
//         "price": price,
//         "multiple": multiple,
//         "max": max,
//         "user_id": userId,
//         "parent_id": parentId,
//         "created_at": createdAt?.toIso8601String(),
//         "updated_at": updatedAt?.toIso8601String(),
//         "locales": locales == null
//             ? []
//             : List<dynamic>.from(locales!.map((x) => x.toJson())),
//       };
// }

class Locale {
  final int? id;
  final String? name;
  final String? description;
  final String? locale;

  Locale({
    this.id,
    this.name,
    this.description,
    this.locale,
  });

  factory Locale.fromJson(Map<String, dynamic> json) => Locale(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        locale: json["locale"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "locale": locale,
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

class Price {
  final int? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? price;
  final String? priceableType;
  final int? priceableId;
  final int? userId;
  final List<Locale>? locales;

  Price({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.price,
    this.priceableType,
    this.priceableId,
    this.userId,
    this.locales,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
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
            : List<Locale>.from(
                json["locales"]!.map((x) => Locale.fromJson(x))),
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
