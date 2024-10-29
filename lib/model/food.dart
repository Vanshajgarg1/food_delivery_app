class Food {
  final String name;
  final String discription;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon>availableAddon;
  Food(
      {required this.name,
      required this.discription,
      required this.imagePath,
      required this.price,
      required this.category ,
      required this.availableAddon});
}

// Food categories

enum FoodCategory{
  burger,
  salads,
  sides,
  desserts,
  drinks,

}

class Addon{
  String name;
  double prince;

  Addon({required this.name , required this.prince});

}