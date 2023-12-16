import 'package:finemenu/api/api.dart';
import 'package:finemenu/constant/end_points.dart';
import 'package:finemenu/models/category.dart';
import 'package:finemenu/models/item.dart';
import 'package:finemenu/models/restaurant.dart';

class GetRestaurantData {

  static Future<Map<String, dynamic>> getRestaurantData(int id) async {
    Map<String, dynamic> data = await Api().get(
      endPoint: AppEndPoints.baseUrl + AppEndPoints.restaurantWithId(id),
    );
    return data;
  }

  // -----------------------------------------------

  static List<Category> categoriesList(menu) {
    final List<Category> categoriesObjs = [];
    menu['categories'].forEach((category) {
      categoriesObjs.add(Category.fromJson(category));
    });
    return categoriesObjs;
  }

// -----------------------------------------------

  static Future<void> getData(int id) async {
    var menu = await getRestaurantData(id);
    final List<Category> categories = categoriesList(menu);
    Restaurant restaurant = Restaurant.fromJson({
      'id': id,
      'name': 'name',
      'media': menu['media'],
      'settings': menu['settings'][0]['data']
    });
    final List<Item> itemsObjs = [];
    categories.forEach((category) => category.items.forEach((item) => itemsObjs.add(item)));
  }

}








