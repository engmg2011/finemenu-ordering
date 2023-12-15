import 'package:finemenu/api/api.dart';
import 'package:finemenu/constant/end_points.dart';
import 'package:finemenu/models/category.dart';

class getCategoriesDataService {
  Future<List<Category>> getCategoriesData() async {
    List<dynamic> data =
        await Api().get(endPoint: AppEndPoints.baseUrl + AppEndPoints.category);

    List<Category> CategoriesList = [];
    for (int i = 0; i < data.length; i++) {
      CategoriesList.add(
        Category.fromJson(data[i]),
      );
    }
    return CategoriesList;
  }
}
