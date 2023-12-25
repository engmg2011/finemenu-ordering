import 'package:finemenu/features/webapp/data/models/category.dart';
import 'package:finemenu/features/webapp/data/models/category_model.dart';
import 'package:finemenu/features/webapp/data/models/price.dart';
import 'package:finemenu/features/webapp/data/repositories/base_webapp_repository.dart';
import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._webAppRepository) : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  final BaseWebAppRepository _webAppRepository;
  late Category categoryModel;
  late ItemModel itemModel;
  Price? lowestPrice;
  TabController? tabController;

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

  List<CategoryModel> categoriesssssList = [];
  Future<void> getData(int id) async {
    categoriesssssList.clear();
    emit(GetDataLoadingState());

    var menu = await _webAppRepository.getRestaurantData(id);

    menu.fold(
      (failure) => emit(GetDataFailureState(failure)),
      (r) {
        categoriesssssList = r;

        emit(GetDataCategorySuccessState());
      },
    );
  }
}
