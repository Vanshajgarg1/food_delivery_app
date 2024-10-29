



import 'food.dart';

class CartItem{
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartItem({
   required this.food ,
    required this.selectedAddons,
    required this.quantity,
});
  double get totalPrice{
    double addonsPrice = selectedAddons.fold(0, (sum, addon) => sum + addon.prince);
    return (food.price + addonsPrice) * quantity;
  }
}