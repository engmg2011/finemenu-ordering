import 'package:finemenu/constant/colors.dart';
import 'package:finemenu/constant/constant.dart';
import 'package:flutter/material.dart';

class CategoryItemView extends StatelessWidget {
  const CategoryItemView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: (() {}),
        child: Container(
          width: Utils.getScreenSize().width * 0.22,
          decoration: BoxDecoration(
            color: lbackgroundclr,
            borderRadius: BorderRadius.circular(55),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Container(
                  height: Utils.getScreenSize().height * 0.1,
                  width: Utils.getScreenSize().width * 0.2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          //  fit: BoxFit.,
                          image: AssetImage('assets/images/food/burger.png')),
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  height: Utils.getScreenSize().height * 0.015,
                ),
                const Text(
                  'Burger',
                  style: TextStyle(color: whiteclr),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
