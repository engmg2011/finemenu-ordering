import 'package:flutter/material.dart';

abstract class Utils {
 static Size getScreenSize() {
    return MediaQueryData.fromView(WidgetsBinding.instance.window).size;
  }
}