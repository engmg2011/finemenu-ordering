import 'package:finemenu/features/webapp/view/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/helpers.dart';
import 'list_item_view.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return DefaultTabController(
        length: cubit.categoriesssssList.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBar(
              automaticallyImplyLeading: false,
              bottom: TabBar(
                isScrollable: true,
                tabs:
                    List<Tab>.from(cubit.categoriesssssList.map((index) => Tab(
                          text: index.locales?[0].name,
                        ))),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                //  physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                // itemCount: 3,
                itemCount: cubit.categoriesssssList[0].items!.length,

                //cubit.categories[1].items.length,
                itemBuilder: (context, index) {
                  print("Burger${cubit.categoriesssssList[0].items!.length}");
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    //asset(_item.media[0].src, '0', '200'),
                    //asset(cubit.itemModel.media[0].src)
                    child: ListItemView(
                      imageUrl: asset(cubit
                          .categoriesssssList[0].items![index].media![0].src
                          .toString()),
                      text: cubit
                          .categoriesssssList[0].items![index].locales![0].name
                          .toString(),
                      description: (cubit.categoriesssssList[0].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "null" ||
                              cubit.categoriesssssList[0].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "")
                          ? "No Description"
                          : cubit.categoriesssssList[0].items![index]
                              .locales![0].description
                              .toString(),
                      price: lowestPrice(cubit
                                  .categoriesssssList[0].items![index].prices!)
                              .price ??
                          0,
                    ),
                  );
                },
              ),
              ListView.builder(
                //  physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                // itemCount: 3,
                itemCount: cubit.categoriesssssList[1].items!.length,
                //cubit.categories[1].items.length,
                itemBuilder: (context, index) {
                  print("Burger${cubit.categoriesssssList[1].items!.length}");
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    //asset(_item.media[0].src, '0', '200'),
                    //asset(cubit.itemModel.media[0].src)
                    child: ListItemView(
                      imageUrl: asset(cubit
                          .categoriesssssList[1].items![index].media![0].src
                          .toString()),
                      text: cubit
                          .categoriesssssList[1].items![index].locales![0].name
                          .toString(),
                      description: (cubit.categoriesssssList[1].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "null" ||
                              cubit.categoriesssssList[1].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "")
                          ? "No Description"
                          : cubit.categoriesssssList[1].items![index]
                              .locales![0].description
                              .toString(),
                      price: lowestPrice(cubit
                                  .categoriesssssList[1].items![index].prices!)
                              .price ??
                          0,
                    ),
                  );
                },
              ),
              ListView.builder(
                //  physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10),
                // itemCount: 3,
                itemCount: cubit.categoriesssssList[2].items!.length,
                //cubit.categories[1].items.length,
                itemBuilder: (context, index) {
                  print("Burger${cubit.categoriesssssList[2].items!.length}");
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    //asset(_item.media[0].src, '0', '200'),
                    //asset(cubit.itemModel.media[0].src)
                    child: ListItemView(
                      imageUrl: asset(cubit
                          .categoriesssssList[2].items![index].media![0].src
                          .toString()),
                      text: cubit
                          .categoriesssssList[2].items![index].locales![0].name
                          .toString(),
                      description: (cubit.categoriesssssList[2].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "null" ||
                              cubit.categoriesssssList[2].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "")
                          ? "No Description"
                          : cubit.categoriesssssList[2].items![index]
                              .locales![0].description
                              .toString(),
                      price: lowestPrice(cubit
                                  .categoriesssssList[2].items![index].prices!)
                              .price ??
                          0,
                    ),
                  );
                },
              ),
              ListView.builder(
                //   physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10),
                // itemCount: 3,
                itemCount: cubit.categoriesssssList[3].items!.length,
                //cubit.categories[1].items.length,
                itemBuilder: (context, index) {
                  print("Burger${cubit.categoriesssssList[3].items!.length}");
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    //asset(_item.media[0].src, '0', '200'),
                    //asset(cubit.itemModel.media[0].src)
                    child: ListItemView(
                      imageUrl: asset(cubit
                          .categoriesssssList[3].items![index].media![0].src
                          .toString()),
                      text: cubit
                          .categoriesssssList[3].items![index].locales![0].name
                          .toString(),
                      description: (cubit.categoriesssssList[3].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "null" ||
                              cubit.categoriesssssList[3].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "")
                          ? "No Description"
                          : cubit.categoriesssssList[3].items![index]
                              .locales![0].description
                              .toString(),
                      price: lowestPrice(cubit
                                  .categoriesssssList[3].items![index].prices!)
                              .price ??
                          0,
                    ),
                  );
                },
              ),
              ListView.builder(
                //  physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10),
                // itemCount: 3,
                itemCount: cubit.categoriesssssList[4].items!.length,
                //cubit.categories[1].items.length,
                itemBuilder: (context, index) {
                  print("Burger${cubit.categoriesssssList[4].items!.length}");
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    //asset(_item.media[0].src, '0', '200'),
                    //asset(cubit.itemModel.media[0].src)
                    child: ListItemView(
                      imageUrl: asset(cubit
                          .categoriesssssList[4].items![index].media![0].src
                          .toString()),
                      text: cubit
                          .categoriesssssList[4].items![index].locales![0].name
                          .toString(),
                      description: (cubit.categoriesssssList[4].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "null" ||
                              cubit.categoriesssssList[4].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "")
                          ? "No Description"
                          : cubit.categoriesssssList[4].items![index]
                              .locales![0].description
                              .toString(),
                      price: lowestPrice(cubit
                                  .categoriesssssList[4].items![index].prices!)
                              .price ??
                          0,
                    ),
                  );
                },
              ),
              ListView.builder(
                //  physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10),
                // itemCount: 3,
                itemCount: cubit.categoriesssssList[5].items!.length,
                //cubit.categories[1].items.length,
                itemBuilder: (context, index) {
                  print("Burger${cubit.categoriesssssList[5].items!.length}");
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    //asset(_item.media[0].src, '0', '200'),
                    //asset(cubit.itemModel.media[0].src)
                    child: ListItemView(
                      imageUrl: asset(cubit
                          .categoriesssssList[5].items![index].media![0].src
                          .toString()),
                      text: cubit
                          .categoriesssssList[5].items![index].locales![0].name
                          .toString(),
                      description: (cubit.categoriesssssList[5].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "null" ||
                              cubit.categoriesssssList[5].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "")
                          ? "No Description"
                          : cubit.categoriesssssList[5].items![index]
                              .locales![0].description
                              .toString(),
                      price: lowestPrice(cubit
                                  .categoriesssssList[5].items![index].prices!)
                              .price ??
                          0,
                    ),
                  );
                },
              ),
              ListView.builder(
                //  physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10),
                // itemCount: 3,
                itemCount: cubit.categoriesssssList[6].items!.length,
                //cubit.categories[1].items.length,
                itemBuilder: (context, index) {
                  print("Burger${cubit.categoriesssssList[6].items!.length}");
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    //asset(_item.media[0].src, '0', '200'),
                    //asset(cubit.itemModel.media[0].src)
                    child: ListItemView(
                      imageUrl: asset(cubit
                          .categoriesssssList[6].items![index].media![0].src
                          .toString()),
                      text: cubit
                          .categoriesssssList[6].items![index].locales![0].name
                          .toString(),
                      description: (cubit.categoriesssssList[6].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "null" ||
                              cubit.categoriesssssList[6].items![index]
                                      .locales![0].description
                                      .toString() ==
                                  "")
                          ? "No Description"
                          : cubit.categoriesssssList[6].items![index]
                              .locales![0].description
                              .toString(),
                      price: lowestPrice(cubit
                                  .categoriesssssList[6].items![index].prices!)
                              .price ??
                          0,
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
