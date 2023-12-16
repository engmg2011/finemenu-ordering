
import 'package:finemenu/api/services/get_restaurant_data.dart';
import 'package:finemenu/home/view/widgets/dropdownbutton_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FineMenu",
            style: TextStyle(
              fontSize: 24,
            )),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: DefaultDropDown(),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                print(selectedRestaurantItem!.name);
                GetRestaurantData.getData(selectedRestaurantItem!.id);

              },
              child: const Text(
                "Open",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
    );
  }
}
