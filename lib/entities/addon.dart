import 'package:finemenu/entities/locale.dart';

class Addon {
  int? id;
  num price;
  num max;
  bool multiple;
  List<Locale> locales = [];

  Addon.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        price = json['price'] ?? 0,
        max = json['max'] ?? 0,
        multiple = json['multiple'] == 1 {
    json['locales']
        .forEach((dynamic locale) => {locales.add(Locale.fromJson(locale))});
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'price': price,
        'max': max,
        'multiple': multiple,
        'locales': locales.map((Locale locale) => locale.toJson()).toList(),
      };
}
