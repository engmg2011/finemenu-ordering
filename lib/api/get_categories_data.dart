import 'package:finemenu/config/config.dart';
import 'package:finemenu/entities/category.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


Future<Object> getCategoriesData() async {
  var url = Uri.parse(ApiUrl + 'categories');

  try {
    var response = await http.get(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + BearerToken
    });
    if (response.statusCode == 200) {
      var categories = convert.jsonDecode(response.body);
      List<Category> categoriesObjs = [];
      categories['data'].forEach(
          (category) => categoriesObjs.add(Category.fromJson(category)));
      return categoriesObjs;
    }
  } catch (e) {
    print(e);
  }
  return false;
}
