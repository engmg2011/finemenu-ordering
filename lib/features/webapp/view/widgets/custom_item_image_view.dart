import 'package:flutter/material.dart';
class CustomItemImage extends StatelessWidget {
  const CustomItemImage({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Image.asset(imageUrl, fit: BoxFit.fill,),
        ),
      );
  }
}
