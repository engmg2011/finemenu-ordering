import 'package:finemenu/constant/colors.dart';
import 'package:finemenu/constant/constant.dart';
import 'package:finemenu/home/view/widgets/category_list_view.dart';
import 'package:finemenu/home/view/widgets/custom_icon_view.dart';
import 'package:finemenu/home/view/widgets/drawer_view.dart';
import 'package:finemenu/home/view/widgets/list_item_view.dart';
import 'package:finemenu/home/view/widgets/search_form_field_view.dart';
import 'package:finemenu/home/view/widgets/tap_bar_view.dart';
import 'package:flutter/material.dart';

class FineMenuScreen extends StatefulWidget {
  const FineMenuScreen({super.key});

  @override
  State<FineMenuScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<FineMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundclr,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: Padding(
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
                CustomIconView(icon: Icons.tune,ontap:null),
              ],
            ),
            SizedBox(
              height: Utils.getScreenSize().height * 0.027,
            ),
            const CategoryListView(),
        ],),
    ),),
          SliverFillRemaining(child:ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ListItemView(),
              );
            },
          ) ,)
            ],
          ),
      drawer: DrawerView(),
        );
  }
}
