import 'package:finemenu/features/webapp/data/models/category.dart';
import 'package:finemenu/features/webapp/data/models/price.dart';
import 'package:finemenu/features/webapp/data/models/setting.dart';
import 'package:finemenu/features/webapp/data/repositories/base_webapp_repository.dart';
import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/item.dart';
import '../../data/models/restaurant.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._webAppRepository) : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  final BaseWebAppRepository _webAppRepository;
  late Category categoryModel;
  late Item itemModel;
  late Price lowestPrice;


//_item.media[0].src
  void getCategoriesData() async {
    emit(GetCategoriesDataLoadingState());
    var result = await _webAppRepository.getCategoriesData();
    result.fold((l) => emit(GetCategoriesDataFailureState(l)), (r) {
      categoryModel = r;
      emit(GetCategoriesDataSuccessState(r));
    });
  }

  void getItemsData() async {
    emit(GetItemsDataLoadingState());
    var result = await _webAppRepository.getItemsData();
    result.fold((l) => emit(GetItemsDataFailureState(l)), (r) {
      itemModel = r;
      emit(GetItemsDataSuccessState(r));
    });
  }

  List<Category> categoriesList(menu) {
    final List<Category> categoriesObjs = [];
    menu['categories'].forEach((category) {
      categoriesObjs.add(Category.fromJson(category));
    });
    return categoriesObjs;
  }


  final List<Item> itemsObjs = [];
  late List<Category> categories;
  late Restaurant restaurant;

  Future<void> getData(int id) async {
    emit(GetDataLoadingState());

    var menu = await _webAppRepository.getRestaurantData(id);

    menu.fold(
      (failure) => emit(GetDataFailureState(failure)),
      (Map<String, dynamic> menuData) {
        categories = categoriesList(menuData);

        emit(GetDataCategorySuccessState(categories));

        restaurant = Restaurant.fromJson({
          'id': id,
          'name': 'name',
          'media': menuData['media'],
          'settings': menuData['settings'][0]['data']
        });

        emit(GetDataRestaurantSuccessState(restaurant));


        categories.forEach(
          (category) => category.items.forEach((item) => itemsObjs.add(item)),
        );

        getItemsData();

        // print("restaurant_id is ===> ${categories[0].restaurant_id}");
        // print("restaurant_id is ===> ${categories[0].restaurant_id.runtimeType}");
        // print("categoryId is ===> ${itemsObjs[0].categoryId}");
        // print("categoryId is ===> ${itemsObjs[0].categoryId.runtimeType}");
        // print("category Locales length is ===> ${categories[0].items[index].locales[0].name}");
        // print("ItemsObjs Price length is ===> ${itemsObjs[0].prices.length}");

        // print("Restaruant Data Is  ===> ${restaurant.media[0].src}");
        // print("Restaruant Data Is  ===> ${restaurant.media[0].src.runtimeType}");
        print("Length Of The Data Is  ===> ${categories[0].items.length}");

        emit(GetDataItemSuccessState(itemsObjs));
      },
    );
  }
}
