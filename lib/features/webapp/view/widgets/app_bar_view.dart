import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/core/constant/constant.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_icon_view.dart';
import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: Utils.getScreenSize().height * 0.065,
          width: Utils.getScreenSize().width * 0.115,
          decoration: BoxDecoration(
              color: lbackgroundclr, borderRadius: BorderRadius.circular(15)),
          child: CustomIconView(
              icon: Icons.menu,
              ontap: () {
                Scaffold.of(context).openDrawer();
              }),
        ),
        Column(
          children: [
            const Text(
              "Deliver to",
              style: TextStyle(
                  color: whiteclr, fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: Utils.getScreenSize().height * 0.002,
            ),
            const Text(
              "02-075 Cairo 9",
              style: TextStyle(
                color: primaryclr,
                fontSize: 15,
              ),
            ),
          ],
        ),
        Container(
          height: Utils.getScreenSize().height * 0.065,
          width: Utils.getScreenSize().width * 0.115,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz-LJaTp0HFRT2GHznf3n7iSAzu-z7och7Vc0GsJkTHWEk67OjQ0t0o6piSTpTv9sr7UI&usqp=CAU")),
              color: lbackgroundclr,
              borderRadius: BorderRadius.circular(15)),
        ),
      ],
    );
  }
}
