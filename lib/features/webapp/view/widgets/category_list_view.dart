import 'package:finemenu/core/constant/constant.dart';
import 'package:finemenu/features/webapp/data/models/category_model.dart';
import 'package:finemenu/features/webapp/view/widgets/category_item_view.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Utils.getScreenSize().height * 0.185,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: ((context, index) {
          return CategoryItemView(
            imageUrl: data[index].imageUrl,
            text: data[index].text,
          );
        }),
      ),
    );
  }
}
