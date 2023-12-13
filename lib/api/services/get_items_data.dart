import 'dart:convert';


import 'package:finemenu/api/api.dart';
import 'package:finemenu/config/config.dart';
import 'package:finemenu/entities/item.dart';

class getItemsDataService {
  Future<List<Item>> getItemsData(
      {required String categoryName}) async {
    List<dynamic> data   =  await Api().get(url: ApiUrl + 'users/1/items');

    List<Item> itemsList = [];
    for (int i = 0; i < data.length; i++) {
      itemsList.add(
        Item.fromJson(data[i]),
      );
    }

    return itemsList;

  }
}