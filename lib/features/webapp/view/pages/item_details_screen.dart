import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/features/webapp/view/widgets/details_item_view.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundclr,
      body: DetailsItemView(),

    );
  }
}
//cubit.itemModelDetails.prices![0].price.toString()
