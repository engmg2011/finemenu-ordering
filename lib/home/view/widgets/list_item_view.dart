import 'package:finemenu/constant/colors.dart';
import 'package:finemenu/home/view/widgets/custom_item_image.dart';
import 'package:finemenu/home/view/widgets/custom_text_button_view.dart';
import 'package:flutter/material.dart';

class ListItemView extends StatelessWidget {
  const ListItemView({super.key});

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
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    'Bacon burger with cheese to tasty',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'Starts from : 10 KDW',
                  style: TextStyle(
                    color: whiteclr
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
               Row(
                 children: [
                   const CustomTextButtonView(text: 'Customize'),
                   SizedBox(
                     width:MediaQuery.of(context).size.width * .1 ,
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

