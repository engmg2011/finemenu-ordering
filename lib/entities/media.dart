
class Media {
  int id;
  String src = '';
  String type = '';
  String? slug = '';

  Media.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        src = json['src'],
        type = json['type'],
        slug = json['slug'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'src': src,
    'type': type,
    'slug': slug
  };

}
