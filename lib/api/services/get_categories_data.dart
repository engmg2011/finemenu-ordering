import 'package:finemenu/api/api.dart';
import 'package:finemenu/config/config.dart';
import 'package:finemenu/entities/category.dart';

class getCategoriesDataService {
  Future<List<Category>> getCategoriesData() async {
    List<dynamic> data = await Api().get(url: ApiUrl + 'categories');

    List<Category> CategoriesList = [];
    for (int i = 0; i < data.length; i++) {
      CategoriesList.add(
        Category.fromJson(data[i]),
      );
    }
    return CategoriesList;
  }
}
