import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
import 'package:finemenu/features/webapp/view/pages/fine_menu_screen.dart';
import 'package:finemenu/features/webapp/view/widgets/dropdownbutton_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/webapp/view/cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
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
          BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {
              if (state is GetDataLoadingState) {
                Center(child: CircularProgressIndicator());
              } else if (state is GetDataCategorySuccessState) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FineMenuScreen()));
              }
            },
            builder: (context, state) {
              return ElevatedButton(
                  onPressed: () {
                    print(
                        "Here The Name Of Restaruant ======> ${selectedRestaurantItem!.name}");
                    cubit.getData(selectedRestaurantItem!.id);
                  },
                  child: const Text(
                    "Open",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
