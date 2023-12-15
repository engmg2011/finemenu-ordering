import 'package:finemenu/api/api.dart';
import 'package:finemenu/constant/end_points.dart';
import 'package:finemenu/models/item.dart';

class getItemsDataService {
  Future<List<Item>> getItemsData({required String categoryName}) async {
    List<dynamic> data =
        await Api().get(endPoint: AppEndPoints.baseUrl + AppEndPoints.item);

    List<Item> itemsList = [];
    for (int i = 0; i < data.length; i++) {
      itemsList.add(
        Item.fromJson(data[i]),
      );
    }

    return itemsList;
  }
}
