import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/core/constant/constant.dart';
import 'package:finemenu/features/webapp/view/cubit/home_cubit.dart';
import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
import 'package:finemenu/features/webapp/view/pages/test_item_details.dart';
import 'package:finemenu/features/webapp/view/widgets/choose_additive_item_vew.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_big_button_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/helpers.dart';

class DetailsItemView extends StatelessWidget {
  const DetailsItemView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubit = HomeCubit.get(context);
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Utils.getScreenSize().height * 0.270,
                width: Utils.getScreenSize().width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      asset(cubit.itemModelDetails.media![0].src.toString()),
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 12, left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.010,
                    ),
                    Text(
                      cubit.itemModelDetails.locales![0].name ?? "",
                      style: const TextStyle(
                          fontSize: 21.5,
                          fontWeight: FontWeight.bold,
                          color: whiteclr),
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.010,
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "200KDW",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: whiteclr),
                        ),
                        Row(
                          children: [
                            Container(
                              height: Utils.getScreenSize().height * 0.050,
                              width: Utils.getScreenSize().width * 0.08,
                              decoration: const BoxDecoration(
                                  color: lbackgroundclr,
                                  shape: BoxShape.circle),
                              child: const Center(
                                child: Icon(
                                  Icons.remove,
                                  color: whiteclr,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Utils.getScreenSize().width * 0.04,
                            ),
                            const Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: whiteclr,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: Utils.getScreenSize().width * 0.04,
                            ),
                            Container(
                              height: Utils.getScreenSize().height * 0.050,
                              width: Utils.getScreenSize().width * 0.08,
                              decoration: const BoxDecoration(
                                  color: lbackgroundclr,
                                  shape: BoxShape.circle),
                              child: const Center(
                                  child: Icon(
                                Icons.add,
                                color: whiteclr,
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.006,
                    ),
                    Text(
                      cubit.itemModelDetails.locales![0].description ?? "",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[400],
                      ),
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.015,
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.09,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ItemPagePrices(
                            Size: cubit.itemModelDetails.prices![index]
                                    .locales![0].name ??
                                "",
                            price:
                                cubit.itemModelDetails.prices![index].price ??
                                    0,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: Utils.getScreenSize().height * 0.015,
                          );
                        },
                        itemCount: cubit.itemModelDetails.prices!.length,
                      ),
                    ),
                    const Text(
                      "Choose Additive",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: whiteclr,
                      ),
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.01,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ChooseAdditiveItemView(
                            imagePath: "assets/images/food/creamcheese.png",
                            additiveName: cubit.itemModelDetails.addons![index]
                                    .locales![0].name
                                    .toString() ??
                                "",
                            price:
                                cubit.itemModelDetails.addons![index].price ??
                                    0);
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: Utils.getScreenSize().height * 0.015,
                        );
                      },
                      itemCount: cubit.itemModelDetails.addons!.length,
                    ),
                    const Center(
                      child: CustomBigButton(
                        textName: 'Add to card',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

//DetailsItemView(
//  imagePath: asset(cubit.itemModelDetails.media![0].src.toString()),
//  itemName: cubit.itemModelDetails.locales![0].name ?? "",
//   itemDescription:
//    cubit.itemModelDetails.locales![0].description ?? "",
// itemPrice: "12.00",
// );

//ItemPagePrices()
