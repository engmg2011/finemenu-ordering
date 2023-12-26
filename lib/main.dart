import 'package:finemenu/core/service/api_service.dart';
import 'package:finemenu/features/webapp/data/data_source/webapp_remote_data_source.dart';
import 'package:finemenu/features/webapp/view/cubit/home_cubit.dart';
import 'package:finemenu/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/service/service_locator.dart';
import 'features/webapp/data/repositories/webapp_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
            create: (context) => HomeCubit(WebAppRepository(
                WebAppRemoteDataSource(apiService: ApiService(dioSetUp()))))),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Your App Title',
        home: HomeScreen(),
      ),
    );
    ;
  }
}
//
