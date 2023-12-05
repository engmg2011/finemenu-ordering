
class Locale {
  int id;
  String name;
  String description;
  String locale;

  Locale.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'] ?? '',
        description = json['description'] ?? '',
        locale = json['locale'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'locale': locale
      };
}
