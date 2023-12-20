import 'package:finemenu/constant/colors.dart';
import 'package:finemenu/constant/constant.dart';
import 'package:finemenu/home/view/widgets/choose_additive_item_vew.dart';
import 'package:finemenu/home/view/widgets/custom_big_button_view.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    super.key,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundclr,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Utils.getScreenSize().height * 0.270,
                width: Utils.getScreenSize().width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/backgrounds/2.jpeg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 12, left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.010,
                    ),
                    const Text(
                      "Burger",
                      style: TextStyle(
                          fontSize: 21.5,
                          fontWeight: FontWeight.bold,
                          color: whiteclr),
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.010,
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "20 KDW",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: whiteclr),
                        ),
                        Row(
                          children: [
                            Container(
                              height: Utils.getScreenSize().height * 0.050,
                              width: Utils.getScreenSize().width * 0.08,
                              decoration: const BoxDecoration(
                                  color: lbackgroundclr,
                                  shape: BoxShape.circle),
                              child: const Center(
                                child: Icon(
                                  Icons.remove,
                                  color: whiteclr,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Utils.getScreenSize().width * 0.04,
                            ),
                            const Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: whiteclr,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: Utils.getScreenSize().width * 0.04,
                            ),
                            Container(
                              height: Utils.getScreenSize().height * 0.050,
                              width: Utils.getScreenSize().width * 0.08,
                              decoration: const BoxDecoration(
                                  color: lbackgroundclr,
                                  shape: BoxShape.circle),
                              child: const Center(
                                  child: Icon(
                                Icons.add,
                                color: whiteclr,
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.006,
                    ),
                    Text(
                      'A veggie burger is a hamburger patty that does not contain meat. It may be made from ingredients like beans.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[400],
                      ),
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.015,
                    ),
                    const Text(
                      "Choose Additive",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: whiteclr,
                      ),
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.01,
                    ),
                    const ChooseAdditiveItemView(
                        imagePath: "assets/images/food/creamcheese.png",
                        additiveName: "Burger",
                        price: 12),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.015,
                    ),
                    const ChooseAdditiveItemView(
                        imagePath: "assets/images/food/avocado.png",
                        additiveName: "Avocado",
                        price: 12),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.015,
                    ),
                    const ChooseAdditiveItemView(
                        imagePath: "assets/images/food/ice_cream.png",
                        additiveName: "Tomato",
                        price: 12),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.015,
                    ),
                    const Center(
                      child: CustomBigButton(
                        textName: 'Add to card',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
