import 'package:finemenu/features/webapp/data/models/category_model.dart';
import 'package:finemenu/features/webapp/data/models/item_details_model.dart';
import 'package:finemenu/features/webapp/data/models/order.dart';

abstract class BaseWebAppDataSource {
  Future<CategoryModel> getCategoriesData();
  Future<ItemDetailsModel> getItemsDetails(int id);
  Future<bool> sendOrder(Order order);
  Future<List<CategoryModel>> getRestaurantData(int id);
}
