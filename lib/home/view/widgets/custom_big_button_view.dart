import 'package:finemenu/constant/colors.dart';
import 'package:finemenu/constant/constant.dart';
import 'package:flutter/material.dart';

class CustomBigButton extends StatelessWidget {
  const CustomBigButton({
    super.key,
    required this.textName,
  });
  final String textName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Utils.getScreenSize().height * 0.06,
      width: Utils.getScreenSize().width * 0.75,
      decoration: BoxDecoration(
        color: primaryclr,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          textName,
          style: const TextStyle(
            fontSize: 15,
            color: whiteclr,
          ),
        ),
      ),
    );
  }
}
