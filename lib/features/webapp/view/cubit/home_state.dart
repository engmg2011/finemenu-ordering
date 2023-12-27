import 'package:finemenu/features/webapp/data/models/category_model.dart';
import 'package:finemenu/features/webapp/data/models/item_details_model.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class GetCategoriesDataLoadingState extends HomeState {}

class GetCategoriesDataSuccessState extends HomeState {
  final CategoryModel categoryModel;
  GetCategoriesDataSuccessState(this.categoryModel);
}

class GetCategoriesDataFailureState extends HomeState {
  final Failure failure;
  GetCategoriesDataFailureState(this.failure);
}

//////////////////////////////////////////////////////////
class GetItemsDataLoadingState extends HomeState {}

class GetItemsDataSuccessState extends HomeState {
  final ItemDetailsModel item;
  GetItemsDataSuccessState(this.item);
}

class GetItemsDataFailureState extends HomeState {
  final Failure failure;
  GetItemsDataFailureState(this.failure);
}

////////////////////////////////////////////////////////////////
class GetDataLoadingState extends HomeState {}

class GetDataCategorySuccessState extends HomeState {
  GetDataCategorySuccessState();
}

class GetDataRestaurantSuccessState extends HomeState {
  GetDataRestaurantSuccessState();
}

class GetDataItemSuccessState extends HomeState {
  final List<ItemModel> item;
  GetDataItemSuccessState(this.item);
}

class GetDataFailureState extends HomeState {
  final Failure failure;
  GetDataFailureState(this.failure);
}

class SelectedSizeState extends HomeState {
  SelectedSizeState();
}

class SumPriceState extends HomeState {
  SumPriceState();
}
