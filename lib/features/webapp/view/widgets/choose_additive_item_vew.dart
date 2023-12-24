import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/core/constant/constant.dart';
import 'package:flutter/material.dart';

class ChooseAdditiveItemView extends StatelessWidget {
  const ChooseAdditiveItemView(
      {super.key,
      required this.imagePath,
      required this.additiveName,
      required this.price});
  final String imagePath;
  final String additiveName;
  final num price;

  @override
  Widget build(BuildContext context) {
    int? value = 1;
    return Row(
      children: [
        Container(
          height: Utils.getScreenSize().height * 0.080,
          width: Utils.getScreenSize().width * 0.15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            color: const Color(0xff3A3843),
          ),
        ),
        SizedBox(
          width: Utils.getScreenSize().width * 0.03,
        ),
        Text(
          additiveName,
          style: const TextStyle(
              color: whiteclr, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: Utils.getScreenSize().width * 0.22,
        ),
        Row(
          children: [
            Text(
              "\$${price}",
              style: const TextStyle(color: whiteclr, fontSize: 16),
            ),
            Radio(value: 1, groupValue: value, onChanged: (int? value) {}),
          ],
        ),
      ],
    );
  }
}
