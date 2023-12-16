import 'dart:ui';

import 'package:finemenu/helpers/helpers.dart';


class Setting {
  Color? primary = const Color.fromRGBO(226, 149, 38, 1.0);
  Color? accent = const Color.fromRGBO(249, 57, 55, 1.0);
  Color? textPrimary = const Color.fromRGBO(29, 29, 29, 1.0);
  Color? textSecondary = const Color.fromRGBO(94, 94, 94, 1.0);
  Color? dark = const Color.fromRGBO(87, 57, 14, 1.0);
  Color? light = const Color.fromRGBO(239, 239, 239, 1.0);

  Setting.fromJson(Map<String, dynamic> json)
      : primary = getColorFromHex(json['primary']),
        accent = getColorFromHex(json['accent']),
        textPrimary = getColorFromHex(json['textPrimary']),
        textSecondary = getColorFromHex(json['textSecondary']),
        dark = getColorFromHex(json['dark']),
        light = getColorFromHex(json['light']);

  Map<String, dynamic> toJson() => {
        'primary': primary,
        'accent': accent,
        'textPrimary': textPrimary,
        'textSecondary': textSecondary,
        'dark': dark,
        'light': light
      };
}
