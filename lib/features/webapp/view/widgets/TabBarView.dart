import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/helpers.dart';
import '../cubit/home_cubit.dart';
import 'list_item_view.dart'; // Don't forget to import the necessary package.

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        vsync: this,
        length: context.read<HomeCubit>().categoriesssssList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return DefaultTabController(
      length: cubit.categoriesssssList.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            automaticallyImplyLeading: false,
            bottom: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: List<Tab>.from(cubit.categoriesssssList.map((e) => Tab(
                    text: e.locales?[0].name ??
                        '', // Added null-aware operator '?'
                  ))),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController, // Added controller to TabBarView
          children: cubit.categoriesssssList
              .map((e) => ListView.builder(
                    itemCount: e.items?.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        child: ListItemView(
                          id: int.parse(e.items![index].id.toString()),
                          imageUrl:
                              asset(e.items![index].media![0].src.toString()),
                          text: e.items![index].locales![0].name.toString(),
                          description: (e.items![index].locales![0].description
                                          .toString() ==
                                      "null" ||
                                  e.items![index].locales![0].description
                                          .toString() ==
                                      "")
                              ? "No Description"
                              : e.items![index].locales![0].description
                                  .toString(),
                          price: 0,
                        ),
                      );
                    },
                  ))
              .toList(), // Converted the Iterable to a List
        ),
      ),
    );
  }
}

// Ensure that you have the necessary imports and definitions for the 'HomeCubit', 'ListItemView', 'asset', and 'lowestPrice' functions/classes.
