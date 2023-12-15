
import 'package:finemenu/models/category.dart';
import 'package:finemenu/models/item.dart';
import 'package:finemenu/models/order.dart';
import 'package:finemenu/models/restaurant.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}
////////////////////////////////////////////////////////////////
class SetStoreCategoriesLoadingState extends HomeState {}

class SetStoreCategoriesSuccessState extends HomeState {
  final List<Category> categories;
  SetStoreCategoriesSuccessState(this.categories);
}

class SetStoreCategoriesErrorState extends HomeState {
  final String error;

  SetStoreCategoriesErrorState(this.error);
}

//////////////////////////////////////////////////////////////
class SetStoreRestaurantCategoriesLoadingState extends HomeState {}

class SetStoreRestaurantCategoriesSuccessState extends HomeState {
  final List<Category> restaurantCategories;
  SetStoreRestaurantCategoriesSuccessState(this.restaurantCategories);
}

class SetStoreRestaurantCategoriesErrorState extends HomeState {
  final String error;

  SetStoreRestaurantCategoriesErrorState(this.error);
}

////////////////////////////////////////////////////////////////
class UpdateStoreCategoryLoadingState {}

class UpdateStoreCategorySuccessState {
  final Category updatedCategory;
  UpdateStoreCategorySuccessState(this.updatedCategory);
}

class UpdateStoreCategoryErrorState {
  final String error;

  UpdateStoreCategoryErrorState(this.error);
}

//////////////////////////////////////////////////////////////
class SetStoreItemsLoadingState {}

class SetStoreItemsSuccessState {
  final List<Item> items;
  SetStoreItemsSuccessState(this.items);
}

class SetStoreItemsErrorState {
  final String error;

  SetStoreItemsErrorState(this.error);
}

///////////////////////////////////////////////////////////////
class UpdateStoreLoadingState {}

class UpdateStoreItemSuccessState {
  final Item updatedItem;
  UpdateStoreItemSuccessState(this.updatedItem);
}

class UpdateStoreItemErrorState {
  final String error;

  UpdateStoreItemErrorState(this.error);
}

/////////////////////////////////////////////////////////////////
class SetStoreOrderLoadingState {}

class SetStoreOrderSuccessState {
  final Order order;
  SetStoreOrderSuccessState(this.order);
}

class SetStoreOrderErrorState {
  final String error;

  SetStoreOrderErrorState(this.error);
}

/////////////////////////////////////////////////////////////////
class UpdateStoreScrollLoadingState {}

class UpdateStoreScrollIndexSuccessState {
  final int updatedScrollIndex;
  UpdateStoreScrollIndexSuccessState(this.updatedScrollIndex);
}

class UpdateStoreScrollIndexErrorState {
  final String error;

  UpdateStoreScrollIndexErrorState(this.error);
}

///////////////////////////////////////////////////////////////
class UpdateStoreDarkModeLoadingState {}

class UpdateStoreDarkModeSuccessState {
  final bool updatedDarkMode;
  UpdateStoreDarkModeSuccessState(this.updatedDarkMode);
}

class UpdateStoreDarkModeErrorState {
  final String error;

  UpdateStoreDarkModeErrorState(this.error);
}

/////////////////////////////////////////////////////////////////
class UpdateScrollItemHeightLoadingState {}

class UpdateScrollItemHeightSuccessState {
  final double updatedScrollItemHeight;
  UpdateScrollItemHeightSuccessState(this.updatedScrollItemHeight);
}

class UpdateScrollItemHeightErrorState {
  final String error;

  UpdateScrollItemHeightErrorState(this.error);
}

/////////////////////////////////////////////////////////////////
class UpdateRestaurantLoadingState {
  final Restaurant restaurant;
  UpdateRestaurantLoadingState(this.restaurant);
}

class UpdateRestaurantSuccessState {
  final Restaurant restaurant;
  UpdateRestaurantSuccessState(this.restaurant);
}

class UpdateRestaurantErrorState {
  final Restaurant restaurant;
  UpdateRestaurantErrorState(this.restaurant);
}
