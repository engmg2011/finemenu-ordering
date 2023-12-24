import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_item_image_view.dart';
import 'package:flutter/material.dart';

class OrderListView extends StatelessWidget {
  const OrderListView(
      {super.key,
      required this.imageUrl,
      required this.itemName,
      required this.itemPrice});
  final String imageUrl;
  final String itemName;
  final num itemPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * .3,
      margin: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: lbackgroundclr,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomItemImage(imageUrl: imageUrl),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  itemName,
                  style: const TextStyle(
                    color: whiteclr,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "$itemPrice X 2 KWD",
                  style: const TextStyle(
                    color: whiteclr,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            Spacer(),
            const Icon(
              Icons.delete_outline,
              color: primaryclr,
            )
          ],
        ),
      ),
    );
  }
}
