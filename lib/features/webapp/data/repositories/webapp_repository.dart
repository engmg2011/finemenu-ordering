import 'package:dartz/dartz.dart';
import 'package:finemenu/core/errors/failure.dart';
import 'package:finemenu/core/errors/server_failure.dart';
import 'package:finemenu/features/webapp/data/data_source/base_webapp_data_source.dart';
import 'package:finemenu/features/webapp/data/models/category_model.dart';
import 'package:finemenu/features/webapp/data/models/item_details_model.dart';
import 'package:finemenu/features/webapp/data/repositories/base_webapp_repository.dart';

class WebAppRepository implements BaseWebAppRepository {
  final BaseWebAppDataSource _dataSource;

  WebAppRepository(this._dataSource);

  @override
  Future<Either<Failure, CategoryModel>> getCategoriesData() async {
    try {
      final getCategories = await _dataSource.getCategoriesData();
      return Right(getCategories);
    } on Exception catch (e) {
      return Left(ServerError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ItemDetailsModel>> getItemsDetails(int id) async {
    try {
      final getItems = await _dataSource.getItemsDetails(id);
      return Right(getItems);
    } on Exception catch (e) {
      return Left(ServerError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> sendOrder(dynamic order) async {
    try {
      final sendOrder = await _dataSource.sendOrder(order);
      return Right(sendOrder);
    } on Exception catch (e) {
      return Left(ServerError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getRestaurantData(int id) async {
    try {
      final getRestaurant = await _dataSource.getRestaurantData(id);
      return Right(getRestaurant);
    } on Exception catch (e) {
      return Left(ServerError(e.toString()));
    }
  }
}
