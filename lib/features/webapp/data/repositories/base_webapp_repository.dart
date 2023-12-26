import 'package:dartz/dartz.dart';
import 'package:finemenu/core/errors/failure.dart';

import 'package:finemenu/features/webapp/data/models/item_details_model.dart';

import '../models/category_model.dart';

abstract class BaseWebAppRepository {
  Future<Either<Failure, CategoryModel>> getCategoriesData();
  Future<Either<Failure, ItemDetailsModel>> getItemsDetails(int id);
 // Future<Either<Failure, bool>> sendOrder(Order order);
  Future<Either<Failure, List<CategoryModel>>> getRestaurantData(int id);
}
