import 'package:finemenu/constant/colors.dart';
import 'package:finemenu/home/view/widgets/custom_item_image_view.dart';
import 'package:flutter/material.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .4,
      child: Row(
        children: [
          const CustomItemImage(imageUrl: 'assets/images/food/noodles.png'),
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
                  child: const Text(
                    'Beef Burger',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 18,
                        color:whiteclr
                    ),
                  ),
                ),

                const SizedBox(
                  height: 3,
                ),
                const Text(
                  '10 KDW',
                  style: TextStyle(
                      color: whiteclr
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

