
import 'package:finemenu/config/config.dart';
import 'package:finemenu/entities/item.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


Future<List<Item>> getItemsData() async {
  var url = Uri.parse(ApiUrl + 'users/1/items');
  try {
    var response = await http.get(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + BearerToken
    });
    if (response.statusCode == 200) {
      var items = convert.jsonDecode(response.body);
      List<Item> itemsObjs = [];
      items.forEach((item) => itemsObjs.add(Item.fromJson(item)));
      return itemsObjs;
    }
  } catch (e) {
    print(e);
  }
  return [];
}
