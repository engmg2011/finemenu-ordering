


import '../models/category.dart';
import '../models/item.dart';
import '../models/order.dart';

abstract class BaseWebAppDataSource {
  Future<Category> getCategoriesData();
  Future<Item> getItemsData();
  Future<bool> sendOrder(Order order);
  Future<Map<String, dynamic>> getRestaurantData(int id);


}
