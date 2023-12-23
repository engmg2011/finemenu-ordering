import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_big_button_view.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_item_image_view.dart';
import 'package:flutter/material.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundclr,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: TextStyle(color: whiteclr),
        ),
        elevation: 0,
        backgroundColor: backgroundclr,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        height: MediaQuery.of(context).size.width * .3,
        margin: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: lbackgroundclr,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomItemImage(imageUrl: 'assets/images/food/noodles.png'),
              SizedBox(
                width: 12,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Burger",
                    style: TextStyle(
                      color: whiteclr,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "\$18 X 2",
                    style: TextStyle(
                      color: whiteclr,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.delete_outline,
                color: primaryclr,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBigButton(textName: "CheckOut (10 KWD)"),
    );
  }
}
