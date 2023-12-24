import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_big_button_view.dart';
import 'package:finemenu/features/webapp/view/widgets/order_list_view.dart';
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
      body: ListView.separated(
          itemBuilder: (context, index) => const OrderListView(
                imageUrl: "assets/images/food/burger.png",
                itemName: "Chicken Burger",
                itemPrice: 12.00,
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: 2),
      bottomNavigationBar: const CustomBigButton(textName: "CheckOut (10 KWD)"),
    );
  }
}
