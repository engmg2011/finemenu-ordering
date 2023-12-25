import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_item_image_view.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_text_button_view.dart';
import 'package:flutter/material.dart';

class ListItemView extends StatelessWidget {
  const ListItemView(
      {super.key,
      required this.imageUrl,
      required this.text,
      required this.description,
      required this.price});
  final String imageUrl;
  final String text;
  final String description;
  final num price;

//assets/images/food/noodles.png'
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .5,
      child: Row(
        children: [
          CustomItemImage(imageUrl: imageUrl),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    text,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 18, color: whiteclr),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'Starts from : $price',
                  style: TextStyle(color: whiteclr),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const CustomTextButtonView(text: 'Customize'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .1,
                    ),
                    const CustomTextButtonView(text: 'Order')
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
