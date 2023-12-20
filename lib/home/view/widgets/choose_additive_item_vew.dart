import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../constant/constant.dart';

class ChooseAdditiveItemView extends StatefulWidget {
  const ChooseAdditiveItemView(
      {super.key,
      required this.imagePath,
      required this.additiveName,
      this.price});
  final String imagePath;
  final String additiveName;
  final price;

  @override
  State<ChooseAdditiveItemView> createState() => _ChooseAdditiveItemViewState();
}

class _ChooseAdditiveItemViewState extends State<ChooseAdditiveItemView> {
  @override
  Widget build(BuildContext context) {
    int? value = 1;
    return Row(
      children: [
        Container(
          height: Utils.getScreenSize().height * 0.080,
          width: Utils.getScreenSize().width * 0.15,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.imagePath),
              ),
              color: const Color(0xff3A3843),
              shape: BoxShape.circle),
        ),
        SizedBox(
          width: Utils.getScreenSize().width * 0.03,
        ),
        Text(
          widget.additiveName,
          style: const TextStyle(
              color: whiteclr, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: Utils.getScreenSize().width * 0.22,
        ),
        Row(
          children: [
            Text(
              "\$${widget.price}",
              style: const TextStyle(color: whiteclr, fontSize: 16),
            ),
            Radio(
                value: 1,
                groupValue: value,
                onChanged: (int? value) {
                  setState(() {
                    value = value!;
                  });
                }),
          ],
        ),
      ],
    );
  }
}
