import 'package:finemenu/home/view/widgets/tap_bar_view.dart';
import 'package:flutter/material.dart';

class FineMenu extends StatefulWidget {
  const FineMenu({super.key});

  @override
  State<FineMenu> createState() => _FineMenuState();
}

class _FineMenuState extends State<FineMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/backgrounds/2.jpeg',
          ),
          const TapBar(),
        ],
      ),
      floatingActionButton:  FloatingActionButton(onPressed:() {},
      child:Icon(Icons.shopping_bag_outlined)),
    );
  }
}


