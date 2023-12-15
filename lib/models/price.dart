import 'package:finemenu/models/locale.dart';

class Price {
  int? id;
  num price;
  int user_id;
  List<Locale> locales = [];

  Price.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        price = json['price'] ?? 0,
        user_id = json['user_id'] {
    json['locales'].forEach((dynamic locale) => {locales.add(Locale.fromJson(locale))});
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'price': price,
        'user_id': user_id,
        'locales': locales.map((Locale locale) => locale.toJson()).toList(),
      };

  emptyPrice(){
    // return new Price();
  }
}
