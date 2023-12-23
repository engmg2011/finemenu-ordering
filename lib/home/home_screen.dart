import 'package:finemenu/core/service/api_service.dart';
import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
import 'package:finemenu/features/webapp/view/widgets/dropdownbutton_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/service/service_locator.dart';
import '../features/webapp/data/data_source/webapp_remote_data_source.dart';
import '../features/webapp/data/repositories/webapp_repository.dart';
import '../features/webapp/view/cubit/home_cubit.dart';

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
          BlocProvider(
            create: (context) {
              return HomeCubit(WebAppRepository(
                  WebAppRemoteDataSource(apiService: ApiService(dioSetUp()))));
            },
            child: BlocConsumer<HomeCubit, HomeState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                final cubit = context.read<HomeCubit>();
                return ElevatedButton(
                    onPressed: () {
                      print(selectedRestaurantItem!.name);
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
          ),
        ],
      ),
    );
  }
}
