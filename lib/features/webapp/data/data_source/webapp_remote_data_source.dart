import 'package:dio/dio.dart';
import 'package:finemenu/core/constant/end_points.dart';
import 'package:finemenu/core/service/api_service.dart';
import 'package:finemenu/features/webapp/data/data_source/base_webapp_data_source.dart';
import 'package:finemenu/features/webapp/data/models/item_details_model.dart';
import 'package:finemenu/features/webapp/data/models/order.dart';
import 'package:flutter/material.dart';
import '../models/category_model.dart';

class WebAppRemoteDataSource implements BaseWebAppDataSource {
  final ApiService apiService;

  WebAppRemoteDataSource({required this.apiService});
  @override
  Future<CategoryModel> getCategoriesData() async {
    Response response = await apiService.get(
        endPoint: AppEndPoints.baseUrl + AppEndPoints.category);
    if (response.statusCode == 200) {
      CategoryModel data = CategoryModel.fromJson(response.data['data']);
      return data;
    } else {
      debugPrint('Response ===> ${response.data}');
      throw Exception();
    }
  }

  @override
  Future<ItemDetailsModel> getItemsDetails(int id) async {
    Response response = await apiService.get(
        endPoint: AppEndPoints.baseUrl + AppEndPoints.itemById(id));
    if (response.statusCode == 200) {
      ItemDetailsModel data = ItemDetailsModel.fromJson(response.data);
      return data;
    } else {
      debugPrint('Response ===> ${response.data}');
      throw Exception();
    }
  }

  @override
  Future<bool> sendOrder(Order order) async {
    Response response = await apiService.post(
        endPoint: AppEndPoints.baseUrl + AppEndPoints.order,
        data: order.toJson());
    if (response.statusCode == 200) {
      debugPrint("updatePrivacyPolicy  success");
      return true;
    } else {
      debugPrint('Response ===> ${response.data}');
      throw Exception();
    }
  }

  @override
  Future<List<CategoryModel>> getRestaurantData(int id) async {
    Response response = await apiService.get(
      endPoint: AppEndPoints.baseUrl + AppEndPoints.restaurantWithId(id),
    );
    if (response.statusCode == 200) {
      List<CategoryModel> categories = List<CategoryModel>.from(
          (response.data['categories'] as List)
              .map((e) => CategoryModel.fromJson(e)));

      return categories;
    } else {
      debugPrint('Response ===> ${response.data}');
      throw Exception();
    }
  }
}
