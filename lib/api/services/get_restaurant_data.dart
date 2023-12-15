import 'package:finemenu/api/api.dart';
import 'package:finemenu/constant/end_points.dart';

class GetRestaurantData {
  Future<Map<String, dynamic>> getRestaurantData(int id) async {
    Map<String, dynamic> data = await Api().get(
      endPoint: AppEndPoints.baseUrl + AppEndPoints.restaurantWithId(id),
    );
    return data;
  }
}
////not complete