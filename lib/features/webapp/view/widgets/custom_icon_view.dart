import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/core/constant/constant.dart';
import 'package:flutter/material.dart';

class CustomIconView extends StatelessWidget {
  const CustomIconView({super.key, required this.icon, required this.ontap});
  final IconData icon;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Utils.getScreenSize().height * 0.065,
      width: Utils.getScreenSize().width * 0.115,
      decoration: BoxDecoration(
        color: lbackgroundclr,
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: ontap,
        color: whiteclr,
      ),
    );
  }
}
