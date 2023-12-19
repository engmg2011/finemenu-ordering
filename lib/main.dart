import 'package:finemenu/home/home_screen.dart';
import 'package:finemenu/home/view/fine_menu.dart';
import 'package:finemenu/home/view/item_details_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fine menu',
      debugShowCheckedModeBanner: false,
      home: DetailScreen(),
    );
  }
}


