import 'package:finemenu/features/webapp/view/cubit/home_cubit.dart';
import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabBarVieww extends StatelessWidget {
  TabBarVieww({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubit = context.read<HomeCubit>();
        return DefaultTabController(
          length: cubit.categoriesssssList.length,
          child: TabBar(
            controller: cubit.tabController,
            tabs: List<Tab>.from(cubit.categoriesssssList.map((index) => Tab(
                  text: index.locales?[0].name,
                ))),
            labelStyle: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            isScrollable: true,
          ),
        );
      },
    );
  }
}
