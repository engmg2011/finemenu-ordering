import 'package:finemenu/features/webapp/data/models/category_model.dart';
import 'package:finemenu/features/webapp/data/models/item_details_model.dart';
import 'package:finemenu/features/webapp/data/models/order_line.dart';
import 'package:finemenu/features/webapp/data/repositories/base_webapp_repository.dart';
import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/order.dart';
import '../../data/models/restaurant.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._webAppRepository) : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  final BaseWebAppRepository _webAppRepository;

  List<CategoryModel> categoryModel = [];
  List<Order> getOrderItem=[];
  late ItemDetailsModel itemModelDetails;
  List<ItemDetailsModel> itemModelDetailsList = [];
  late Restaurant restaurant;
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
// }//itemModelDetailsList.add(it
//_item.media[0].src

  void getCategoriesData() async {
    emit(GetCategoriesDataLoadingState());
    var result = await _webAppRepository.getCategoriesData();
    result.fold((l) => emit(GetCategoriesDataFailureState(l)), (r) {
      categoryModel = r;
      emit(GetCategoriesDataSuccessState());
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

  void sendOrder(dynamic order) async {
    emit(SendOrderLoadingState());
    var result = await _webAppRepository.sendOrder(order);
    result.fold((l) => emit(SendOrderFailureState(l)), (r) {
      emit(SendOrderSuccessState());
    });
  }
  // List<CategoryModel> categoriesList(menu) {
  //   final List<CategoryModel> categoriesObjs = [];
  //   menu['categories'].forEach((category) {
  //     categoriesObjs.add(CategoryModel.fromJson(category));
  //   });
  //   return categoriesObjs;
  // }

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
late final Order order;
  Order prepareOrder(
      ItemDetailsModel _item, selectedPriceIndex, checkedAddons) {
     order =
        Order.fromJson({'orderable_id': restaurant!.id, 'order_lines': []});
    final OrderLine ol = OrderLine.fromJson(
        {'item_id': _item.id, 'count': 1, 'item': _item.toJson()});
    if (_item.prices!.isNotEmpty) {
      if (selectedPriceIndex != null)
        ol.prices.add(_item.prices![selectedPriceIndex]);
      else
        ol.prices.add(_item.prices!.first);
      ol.prices.first.id = null;
      // empty prices for item as no need
      ol.item.prices = [];
    }
    //TODO :: Add selected discounts
    for (int checkedIndex = 0;
        checkedIndex < checkedAddons.length;
        checkedIndex++) {
      if (checkedAddons[checkedIndex]) {
        final Addon addonCopy = _item.addons![checkedIndex];
        addonCopy.id = null;
        ol.addons.add(addonCopy);
      }
    }
    order.order_lines.add(ol);
    final num orderPrice = sum;
    order.totalPrice = orderPrice;
    order.prices = [];
    order.prices.add(
        PriceModel.fromJson({'price': orderPrice, 'user_id': 1, 'locales': []}));
    order.prices.first.id = null; 
    emit(prepareOrderState());
    return order;
    
  }
  // Order storeOrder;
  // void setStoreOrder(){
  //   Order s
  //   emit(setStoreOrderState());
  // }
}
