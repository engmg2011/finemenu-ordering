import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/features/webapp/view/cubit/home_cubit.dart';
import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_big_button_view.dart';
import 'package:finemenu/features/webapp/view/widgets/order_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final cubit = context.read<HomeCubit>();

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
          body: ListView(
            children: List<Widget>.from(
              cubit.getOrderItem.map(
                    (e) => ListView.builder(
                  itemBuilder: (context, index) => OrderListView(
                    itemName: e.order_lines[index].item.locales![0].name!,
                    itemSize: e.order_lines[index].item.prices!.first.locales![0].name!,
                    itemPrice: e.order_lines[index].prices.first.price!,
                    onDelete: () {
                      print("Deleted Success");
                    },
                  ),
                  itemCount: e.order_lines.length,
                  physics: ScrollPhysics(),
                ),
              ),
            ),
          ),
          bottomNavigationBar: InkWell(
            onTap: () {},
            child: const CustomBigButton(
              textName: "CheckOut (10 KWD)",
            ),
          ),
        );
      },
    );
  }
}
