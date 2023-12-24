import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/core/constant/constant.dart';
import 'package:finemenu/features/webapp/view/cubit/home_cubit.dart';
import 'package:finemenu/features/webapp/view/widgets/category_list_view.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_icon_view.dart';
import 'package:finemenu/features/webapp/view/widgets/details_item_view.dart';
import 'package:finemenu/features/webapp/view/widgets/drawer_view.dart';
import 'package:finemenu/features/webapp/view/widgets/list_item_view.dart';
import 'package:finemenu/features/webapp/view/widgets/search_form_field_view.dart';
import 'package:finemenu/features/webapp/view/widgets/tap_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FineMenuScreen extends StatelessWidget {
  const FineMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundclr,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TapBarView(),
                  SizedBox(
                    height: Utils.getScreenSize().height * 0.025,
                  ),
                  const Text(
                    "What would you like\nto order",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: whiteclr,
                      fontSize: 21,
                    ),
                  ),
                  SizedBox(
                    height: Utils.getScreenSize().height * 0.027,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchFormFieldView(),
                      CustomIconView(icon: Icons.tune, ontap: null),
                    ],
                  ),
                  SizedBox(
                    height: Utils.getScreenSize().height * 0.027,
                  ),
                  CategoryListView(),
                ],
              ),
            ),
          ),
          BlocConsumer(
            builder: (context, state) {
              final cubit = context.read<HomeCubit>();

              return SliverFillRemaining(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: cubit.itemModel.locales.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        child: ListItemView(
                          imageUrl: 'assets/images/food/noodles.png',
                          text: cubit.itemModel.locales[0].name,
                          description: cubit.itemModel.locales[0].description,
                          price: cubit.lowestPriceModel.price,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailsItemView(
                                        imagePath:
                                            'assets/images/food/noodles.png',
                                        itemName: 'Noodles',
                                        itemDescription:
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget nunc vitae tortor aliquam aliquet. ',
                                        itemPrice: '5.00',
                                      )));
                        },
                      ),
                    );
                  },
                ),
              );
            },
            listener: (context, state) {},
          )
        ],
      ),
      drawer: DrawerView(),
    );
  }
}

// asset(_item.media[0].src,)
//_item.locales[0].name,
