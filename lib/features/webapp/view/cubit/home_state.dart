import 'package:finemenu/features/webapp/data/models/category.dart';
import 'package:finemenu/features/webapp/data/models/restaurant.dart';

import '../../../../core/errors/failure.dart';
import '../../data/models/item.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class GetCategoriesDataLoadingState extends HomeState {}

class GetCategoriesDataSuccessState extends HomeState {
  final Category categoryModel;
  GetCategoriesDataSuccessState(this.categoryModel);
}

class GetCategoriesDataFailureState extends HomeState {
  final Failure failure;
  GetCategoriesDataFailureState(this.failure);
}
//////////////////////////////////////////////////////////
class GetItemsDataLoadingState extends HomeState {}

class GetItemsDataSuccessState extends HomeState {
  final Item item;
  GetItemsDataSuccessState(this.item);
}

class GetItemsDataFailureState extends HomeState {
  final Failure failure;
  GetItemsDataFailureState(this.failure);
}
////////////////////////////////////////////////////////////////
class GetDataLoadingState extends HomeState {}

class GetDataCategorySuccessState extends HomeState {
  final List<Category> category;
  GetDataCategorySuccessState(this.category);
}
class GetDataRestaurantSuccessState extends HomeState {
  final Restaurant restaurant;
  GetDataRestaurantSuccessState(this.restaurant);
}
class GetDataItemSuccessState extends HomeState {
  final List<Item> item;
  GetDataItemSuccessState(this.item);
}
class GetDataFailureState extends HomeState {
  final Failure failure;
  GetDataFailureState(this.failure);
}