import 'package:finemenu/core/constant/constant.dart';
import 'package:finemenu/features/webapp/view/widgets/category_item_view.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Utils.getScreenSize().height * 0.185,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: ((context, index) {
          return const CategoryItemView();
        }),
      ),
    );
  }
}
