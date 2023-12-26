import 'package:finemenu/features/webapp/view/cubit/home_cubit.dart';
import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
import 'package:finemenu/features/webapp/view/pages/item_details_screen.dart';
import 'package:finemenu/features/webapp/view/widgets/custom_text_button_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListItemView extends StatelessWidget {
  ListItemView(
      {super.key,
      this.imageUrl,
      this.text,
      this.description,
      this.price,
      required this.id});
  String? imageUrl;
  String? text;
  String? description;
  num? price;
  final int id;

//assets/images/food/noodles.png'
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .5,
      child: Row(
        children: [
          Expanded(
            child: Image.network(
              imageUrl!,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    text ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    description ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'Starts from : $price',
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 12,
                ),
                BlocConsumer<HomeCubit, HomeState>(
                  listener: (context, state) {
                    if (state is GetItemsDataSuccessState) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailScreen()));
                    } else if (state is GetItemsDataLoadingState) {
                      const Center(child: CircularProgressIndicator());
                    }
                  },
                  builder: (context, state) {
                    final cubit = context.read<HomeCubit>();
                    return Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              cubit.getItemsDetails(id);
                              print('id is $id');
                            },
                            child:
                                const CustomTextButtonView(text: 'Customize')),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .05,
                        ),
                        const CustomTextButtonView(text: 'Order')
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
