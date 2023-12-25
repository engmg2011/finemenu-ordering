import 'package:finemenu/features/webapp/data/models/category_model.dart';

import '../models/category.dart';
import '../models/order.dart';

abstract class BaseWebAppDataSource {
  Future<Category> getCategoriesData();
  Future<ItemModel> getItemsData();
  Future<bool> sendOrder(Order order);
  Future<List<CategoryModel>> getRestaurantData(int id);
}
