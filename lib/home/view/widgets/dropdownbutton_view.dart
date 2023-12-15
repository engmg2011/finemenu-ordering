import 'package:flutter/material.dart';

class RestaurantItem {
  const RestaurantItem({required this.id, required this.name});

  final String name;
  final int id;
}

class DefaultDropDown extends StatefulWidget {
  const DefaultDropDown({super.key});

  @override
  State<DefaultDropDown> createState() => _DefaultDropDownState();
}

late RestaurantItem? selectedRestaurantItem;
List<RestaurantItem> restaurants = const [
  RestaurantItem(id: 1, name: 'FineMenu'),
  RestaurantItem(id: 3, name: 'Gemy Cars'),
];

class _DefaultDropDownState extends State<DefaultDropDown> {
  @override
  void initState() {
    super.initState();
    selectedRestaurantItem = restaurants[0];
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<RestaurantItem>(
      value: selectedRestaurantItem,
      onChanged: (newValue) {
        setState(() {
          selectedRestaurantItem = newValue;
        });
      },
      items: restaurants.map((RestaurantItem restaurant) {
        return DropdownMenuItem<RestaurantItem>(
          value: restaurant,
          child: Text(
            restaurant.name,
            style: const TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
    );
  }
}
