import 'package:finemenu/features/webapp/data/models/category_model.dart';
import 'package:finemenu/features/webapp/data/models/item_details_model.dart';
import 'package:finemenu/features/webapp/data/repositories/base_webapp_repository.dart';
import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._webAppRepository) : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  final BaseWebAppRepository _webAppRepository;
  late CategoryModel categoryModel;
  late ItemDetailsModel itemModelDetails;
  List<ItemDetailsModel> itemModelDetailsList = [];
  num sizePrice = 0;

  List<Addon> countPrice = [];
  num sum = 0;
  void sumPrice() {
    sum = 0;
    countPrice.forEach((element) {
      sum += element.price!;
    });
    sum = sum + sizePrice;
    print(sum);
    emit(SumPriceState());
  }
  // void addItemToCart(Addon item) {
  //   countPrice.add(item);
  //   sumPrice();
  //   emit(AddItemToCartState());
  // }
  //
  // void removeItemFromCart(Addon item) {
  //   countPrice.remove(item);
  //   sumPrice();
  //   emit(RemoveItemFromCartState());
  // }

//   void clearCart() {
//     countPrice.clear();
//     sumPrice();
//     emit(ClearCartState());
// }
  //itemModelDetailsList.add(it

//_item.media[0].src

  void getCategoriesData() async {
    emit(GetCategoriesDataLoadingState());
    var result = await _webAppRepository.getCategoriesData();
    result.fold((l) => emit(GetCategoriesDataFailureState(l)), (r) {
      categoryModel = r;

      emit(GetCategoriesDataSuccessState(r));
    });
  }

  void getItemsDetails(int id) async {
    emit(GetItemsDataLoadingState());
    var result = await _webAppRepository.getItemsDetails(id);
    result.fold((l) => emit(GetItemsDataFailureState(l)), (r) {
      itemModelDetails = r;
      emit(GetItemsDataSuccessState(r));
    });
  }

  List<CategoryModel> categoriesList(menu) {
    final List<CategoryModel> categoriesObjs = [];
    menu['categories'].forEach((category) {
      categoriesObjs.add(CategoryModel.fromJson(category));
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
