import 'package:finemenu/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextButtonView extends StatelessWidget {
  const CustomTextButtonView({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: lbackgroundclr, borderRadius: BorderRadius.circular(12)),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(
              color: primaryclr,
            ),
          )),
    );
  }
}
