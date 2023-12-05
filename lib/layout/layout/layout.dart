import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
   LayoutScreen({super.key});

  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,


    );
  }
}
