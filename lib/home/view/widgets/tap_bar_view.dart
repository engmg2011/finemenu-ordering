import 'package:finemenu/home/view/widgets/elevatedButton_view.dart';
import 'package:flutter/material.dart';

class TapBar extends StatelessWidget {
  const TapBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(5),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DefaultElevatedButton(
            text: 'Burger',
          ),
          const SizedBox(width: 5),
          DefaultElevatedButton(
            text: 'Dessert',
          ),
          const SizedBox(width: 5),
          DefaultElevatedButton(
            text: 'Drinks',
          ),
          const SizedBox(width: 5),
          DefaultElevatedButton(
            text: 'Fruits',
          ),
          const SizedBox(width: 5),
          DefaultElevatedButton(
            text: 'Pizza',
          ),
          const SizedBox(width: 5),
          DefaultElevatedButton(
            text: 'Sandwiches',
          ),
        ],
      ),
    );
  }
}