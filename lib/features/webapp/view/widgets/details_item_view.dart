import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/core/constant/constant.dart';
import 'package:finemenu/features/webapp/view/cubit/home_cubit.dart';
import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
import 'package:finemenu/features/webapp/view/pages/fine_menu_screen.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_big_button_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/helpers.dart';

class DetailsItemView extends StatefulWidget {
  const DetailsItemView({
    super.key,
  });

  @override
  State<DetailsItemView> createState() => _DetailsItemViewState();
}

int selectItemSize = 0;

class _DetailsItemViewState extends State<DetailsItemView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubit = context.read<HomeCubit>();
        return SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: Utils.getScreenSize().height * 0.270,
                    width: Utils.getScreenSize().width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          asset(
                              cubit.itemModelDetails.media![0].src.toString()),
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12.0, right: 12, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Utils.getScreenSize().height * 0.010,
                        ),
                        Text(
                          cubit.itemModelDetails.locales![0].name ?? "",
                          style: const TextStyle(
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
                        SizedBox(
                          height: Utils.getScreenSize().height * 0.006,
                        ),
                        Text(
                          cubit.itemModelDetails.locales![0].description ?? "",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                          ),
                        ),
                        SizedBox(
                          height: Utils.getScreenSize().height * 0.015,
                        ),
                        SizedBox(
                          height: Utils.getScreenSize().height * 0.09,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: cubit.itemModelDetails.prices!.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  selectItemSize = index;
                                  setState(() {
                                    cubit.sizePrice = cubit.itemModelDetails!
                                            .prices![selectItemSize].price! ??
                                        0;
                                  });
                                },
                                child: Container(
                                  width: 100.0, // Adjust the width as needed
                                  margin: EdgeInsets.all(8.0),
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: selectItemSize == index
                                        ? primaryclr
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Center(
                                      child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (selectItemSize == index)
                                        const Icon(
                                          Icons.check,
                                          color: whiteclr,
                                          size: 30,
                                        ),
                                      SizedBox(
                                        width:
                                            Utils.getScreenSize().width * 0.01,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                              cubit
                                                      .itemModelDetails
                                                      .prices![index]
                                                      .locales![0]
                                                      .name ??
                                                  "",
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12)),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Wrap(
                                            children: [
                                              Text(
                                                  cubit.itemModelDetails
                                                          .prices![index].price
                                                          .toString() ??
                                                      "",
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12)),
                                              const Text(' KWD',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      height: 1.4)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: Utils.getScreenSize().height * 0.015,
                              );
                            },
                          ),
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
                        Column(
                          children: cubit.itemModelDetails.addons!.map((e) {
                            return CheckboxListTile(
                                activeColor: primaryclr,
                                checkColor: Colors.white,
                                title: RichText(
                                  text: TextSpan(
                                    text: e.locales![0].name!,
                                    style: TextStyle(color: whiteclr),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "        ${e.price}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: whiteclr)),
                                    ],
                                  ),
                                ),
                                value: cubit.countPrice.contains(e),
                                onChanged: (value) {
                                  setState(() {
                                    if (value == true) {
                                      cubit.countPrice.add(e);
                                    } else {
                                      cubit.countPrice.remove(e);
                                    }
                                  });
                                });
                          }).toList(),
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              cubit.sumPrice();
                              print(cubit.sum);
                              print(cubit.countPrice);
                              print("ossssssssssssssss");
                            },
                            child: CustomBigButton(
                              textName: "${cubit.sum} 'Add to card'",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FineMenuScreen()));
                    }),
                top: 30,
                left: 20,
              ),
            ],
          ),
        );
      },
    );
  }
}
