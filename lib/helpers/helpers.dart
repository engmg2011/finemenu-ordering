import 'package:finemenu/entities/media.dart';
import 'package:flutter/material.dart';

Color getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll('#', '');
  if (hexColor.length == 6) {
    return Color(int.parse('0xFF$hexColor'));
  }
  if (hexColor.length == 8) {
    final String h = hexColor.substring(0,6);
    return Color(int.parse('0xFF$h'));
  }
  return const Color(0xFF000000);
}

List<Media> mediaBySlug(List<Media> media, String slug){
  return media.where((Media m) => m.slug == slug).toList();
}