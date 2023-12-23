import 'package:dio/dio.dart';
import 'package:finemenu/core/constant/end_points.dart';
import 'package:finemenu/core/service/api_service.dart';
import 'package:finemenu/features/webapp/data/data_source/base_webapp_data_source.dart';
import 'package:finemenu/features/webapp/data/models/category.dart';
import 'package:finemenu/features/webapp/data/models/item.dart';
import 'package:finemenu/features/webapp/data/models/order.dart';
import 'package:flutter/material.dart';

class WebAppRemoteDataSource implements BaseWebAppDataSource {
  final ApiService apiService;

  WebAppRemoteDataSource({required this.apiService});
  @override
  Future<Category> getCategoriesData() async {
    Response response = await apiService.get(
        endPoint: AppEndPoints.baseUrl + AppEndPoints.category);
    if (response.statusCode == 200) {
      Category data = Category.fromJson(response.data['data']);
      return data;
    } else {
      debugPrint('Response ===> ${response.data}');
      throw Exception();
    }
  }

  @override
  Future<Item> getItemsData() async {
    Response response = await apiService.get(
        endPoint: AppEndPoints.baseUrl + AppEndPoints.item);
    if (response.statusCode == 200) {
      Item data = Item.fromJson(response.data);
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
  Future<Map<String, dynamic>> getRestaurantData(int id) async{
   Response response = await apiService.get(
     endPoint: AppEndPoints.baseUrl + AppEndPoints.restaurantWithId(id),);
   if (response.statusCode == 200) {
     return response.data;
   } else {
     debugPrint('Response ===> ${response.data}');
     throw Exception();
   }
  }
}
