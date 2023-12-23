import 'package:finemenu/core/constant/colors.dart';
import 'package:finemenu/core/constant/constant.dart';
import 'package:flutter/material.dart';

class SearchFormFieldView extends StatelessWidget {
  const SearchFormFieldView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Utils.getScreenSize().height * 0.065,
      width: Utils.getScreenSize().width * 0.785,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: "Find for restaurant or food...",
          hintStyle: const TextStyle(color: Colors.grey),
          fillColor: lbackgroundclr,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
