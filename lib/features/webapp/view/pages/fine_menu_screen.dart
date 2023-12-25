import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/core/constant/constant.dart';
import 'package:finemenu/features/webapp/view/widgets/TabBarView.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_icon_view.dart';
import 'package:finemenu/features/webapp/view/widgets/drawer_view.dart';
import 'package:finemenu/features/webapp/view/widgets/search_form_field_view.dart';
import 'package:finemenu/features/webapp/view/widgets/app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/helpers.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';
import '../widgets/list_item_view.dart';

class FineMenuScreen extends StatefulWidget {
  const FineMenuScreen({super.key});

  @override
  State<FineMenuScreen> createState() => _FineMenuScreenState();
}
TabController  tabController = TabController(length: 7, vsync: ScrollableState());
class _FineMenuScreenState extends State<FineMenuScreen> {
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
                  AppBarView(),
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
                  // SizedBox(
                  //   height: Utils.getScreenSize().height * 0.027,
                  // ),
                  // const Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     SearchFormFieldView(),
                  //     CustomIconView(icon: Icons.tune, ontap: null),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: Utils.getScreenSize().height * 0.027,
                  // ),
                ],
              ),
            ),
          ),
         SliverFillRemaining(
           child:TabBarDemo() ,
         )
        ],
      ),
      drawer: DrawerView(),
    );
  }
}
//TabBarView
//lowestPrice(cubit.categoriesssssList[0].items![index].prices!).price!
// asset(_item.media[0].src,)
//_item.locales[0].name,

//SliverFillRemaining(
