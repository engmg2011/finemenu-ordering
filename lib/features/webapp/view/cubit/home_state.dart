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

class GetDataCategorySuccessState extends HomeState {}

class GetDataFailureState extends HomeState {
  final Failure failure;
  GetDataFailureState(this.failure);
}

/////////////////////////////////////////////////////////////////////
class SumPriceState extends HomeState {
  SumPriceState();
}

//////////////////////////////////////////////////////////////////////////
class SendOrderLoadingState extends HomeState {}

class SendOrderSuccessState extends HomeState {}

class SendOrderFailureState extends HomeState {
  final Failure failure;

  SendOrderFailureState(this.failure);
}
