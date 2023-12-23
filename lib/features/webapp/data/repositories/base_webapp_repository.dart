import 'package:dartz/dartz.dart';
import 'package:finemenu/core/errors/failure.dart';
import 'package:finemenu/features/webapp/data/models/category.dart';
import 'package:finemenu/features/webapp/data/models/item.dart';

abstract class BaseWebAppRepository {
  Future<Either<Failure, Category>> getCategoriesData();

  Future<Either<Failure, Item>> getItemsData();

  Future<Either<Failure, bool>> sendOrder(Order order);
  Future<Either<Failure,Map<String, dynamic>>> getRestaurantData(int id);
}
