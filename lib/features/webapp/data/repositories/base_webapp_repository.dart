import 'package:dartz/dartz.dart';
import 'package:finemenu/core/errors/failure.dart';
import 'package:finemenu/features/webapp/data/models/category.dart';

import '../models/category_model.dart';

abstract class BaseWebAppRepository {
  Future<Either<Failure, Category>> getCategoriesData();
  Future<Either<Failure, ItemModel>> getItemsData();
  Future<Either<Failure, bool>> sendOrder(Order order);
  Future<Either<Failure, List<CategoryModel>>> getRestaurantData(int id);
}
