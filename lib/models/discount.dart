import 'package:finemenu/models/locale.dart';

class Discount {
  int id;
  num amount;
  String type;
  List<Locale> locales = [];

  Discount.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        amount = json['amount'] ?? 0,
        type = json['type']{
    json['locales'].forEach((dynamic locale) => {locales.add(Locale.fromJson(locale))});
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'amount': amount,
        'type': type,
        'locales': locales.map((Locale locale) => locale.toJson()).toList(),
      };
}
