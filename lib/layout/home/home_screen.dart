import 'package:finemenu/cubit/home_cubit/home_cubit.dart';
import 'package:finemenu/cubit/home_cubit/home_state.dart';
import 'package:finemenu/widgets/dropdownbutton_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
