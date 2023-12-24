import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/features/webapp/view/widgets/details_item_view.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: backgroundclr,
        body: DetailsItemView(
          imagePath: "assets/images/backgrounds/1.jpg",
          itemName: "Chicken Burger",
          itemDescription:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut metus euismod, sodales ipsum vitae, aliquam nisl. Donec euismod, nisl eget ultricies ultricies, nisl nisl ultricies nisl, vitae aliquam nisl nisl vitae nisl. ",
          itemPrice: "12.00",
        ));
  }
}
