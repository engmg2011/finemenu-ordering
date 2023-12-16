


import 'package:finemenu/models/category.dart';
import 'package:finemenu/models/item.dart';

class AppState {
  bool darkMode;
  List<Category> categories;
  List<Item> items;
  int scrollIndex;
  double scrollItemHeight;
  List<Category> restaurantCategories;
  dynamic order;
  dynamic restaurant;

  AppState(
      {this.darkMode = true,
      this.categories = const [],
      this.restaurantCategories = const [],
      this.items = const [],
      this.scrollIndex = 0,
      this.scrollItemHeight = 241.00,
      this.order,
      this.restaurant});
}
