import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';

class ItemPagePrices extends StatelessWidget {
  ItemPagePrices({
    Key? key,
    required this.Size,
    required this.price,
  }) : super(key: key) {}
  final String Size;
  final num price;
  int selectedPriceIndex = 0;

  // selectPrice(index) {
  bool selected = false;

  // widget.selectedPriceCallBack(index);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        FilterChip(
          onSelected: (bool value) {},
          // selected: selectedPriceIndex == index,
          // padding:
          //     const EdgeInsets.only(right: 12, left: 12, top: 5, bottom: 5),
          selectedColor: primaryclr,
          backgroundColor: Colors.black,
          checkmarkColor: Colors.white, autofocus: true,
          selected: !selected,
          label: Column(
            children: [
               Text(Size,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12)),
              SizedBox(
                height: 5,
              ),
              Wrap(
                children: [
                  Text(price.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                  Text(' KWD',
                      style: const TextStyle(
                          color: Colors.white, fontSize: 10, height: 1.4)),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
