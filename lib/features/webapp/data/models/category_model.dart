class ImageTextModel {
  final String imageUrl;
  final String text;

  ImageTextModel({required this.imageUrl, required this.text});
}

List<ImageTextModel> data = [
  ImageTextModel(imageUrl: 'assets/images/food/1.jpg', text: 'Burger'),
  ImageTextModel(imageUrl: 'assets/images/food-sm/3.jpeg', text: 'Pizza'),
  ImageTextModel(imageUrl: 'assets/images/food/sandwich.png', text: 'Sandwich'),
  ImageTextModel(imageUrl: 'assets/images/food/noodles.png', text: 'Dish'),
  ImageTextModel(
      imageUrl: 'assets/images/food/ice_cream.png', text: 'Desserts'),
  ImageTextModel(imageUrl: 'assets/images/food/6.jpg', text: 'Fruits'),
  ImageTextModel(imageUrl: 'assets/images/food/cola.png', text: 'Drinks'),
  // Add more instances as needed
];
