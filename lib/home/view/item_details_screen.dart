import 'package:finemenu/constant/colors.dart';
import 'package:finemenu/constant/constant.dart';
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
                    Row(
                      children: [
                        Container(
                          height: Utils.getScreenSize().height * 0.080,
                          width: Utils.getScreenSize().width * 0.15,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/food/creamcheese.png"),
                              ),
                              color: Color(0xff3A3843),
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: Utils.getScreenSize().width * 0.03,
                        ),
                        const Text(
                          "Cream Cheese",
                          style: TextStyle(
                              color: whiteclr,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: Utils.getScreenSize().width * 0.22,
                        ),
                        Row(
                          children: [
                            const Text(
                              "\$${10}",
                              style: TextStyle(color: whiteclr, fontSize: 16),
                            ),
                            Radio(
                                value: 1,
                                groupValue: _value,
                                onChanged: (int? value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.015,
                    ),
                    Row(
                      children: [
                        Container(
                          height: Utils.getScreenSize().height * 0.080,
                          width: Utils.getScreenSize().width * 0.15,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/food/avocado.png"),
                              ),
                              color: Color(0xff3A3843),
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: Utils.getScreenSize().width * 0.03,
                        ),
                        const Text(
                          "Avocado",
                          style: TextStyle(
                              color: whiteclr,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: Utils.getScreenSize().width * 0.328,
                        ),
                        Row(
                          children: [
                            const Text(
                              "\$${11}",
                              style: TextStyle(color: whiteclr, fontSize: 16),
                            ),
                            Radio(
                                value: 2,
                                groupValue: _value,
                                onChanged: (int? value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.015,
                    ),
                    Row(
                      children: [
                        Container(
                          height: Utils.getScreenSize().height * 0.080,
                          width: Utils.getScreenSize().width * 0.15,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "assets/images/food/ice_cream.png"),
                              ),
                              color: Color(0xff3A3843),
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: Utils.getScreenSize().width * 0.0305,
                        ),
                        const Text(
                          "Tomato",
                          style: TextStyle(
                              color: whiteclr,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: Utils.getScreenSize().width * 0.35,
                        ),
                        Row(
                          children: [
                            const Text(
                              "\$${13}",
                              style: TextStyle(color: whiteclr, fontSize: 16),
                            ),
                            Radio(
                                value: 3,
                                groupValue: _value,
                                onChanged: (int? value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Utils.getScreenSize().height * 0.015,
                    ),
                    Center(
                      child: Container(
                        height: Utils.getScreenSize().height * 0.06,
                        width: Utils.getScreenSize().width * 0.75,
                        decoration: BoxDecoration(
                          color: primaryclr,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            "Add to card",
                            style: TextStyle(
                              fontSize: 15,
                              color: whiteclr,
                            ),
                          ),
                        ),
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
