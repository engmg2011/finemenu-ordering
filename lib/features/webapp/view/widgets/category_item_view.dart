import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/core/constant/constant.dart';
import 'package:flutter/material.dart';

class CategoryItemView extends StatelessWidget {
  const CategoryItemView({
    super.key,
    required this.imageUrl,
    required this.text,
  });
  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
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
                decoration: BoxDecoration(
                    image: DecorationImage(
                        //  fit: BoxFit.,
                        image: AssetImage(imageUrl)),
                    shape: BoxShape.circle),
              ),
              SizedBox(
                height: Utils.getScreenSize().height * 0.015,
              ),
              Text(
                text,
                style: const TextStyle(color: whiteclr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
