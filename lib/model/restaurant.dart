// import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:food_delivery/model/cart_item.dart';

import 'food.dart';


class Restaurant extends ChangeNotifier{

  final List<Food> menu = [
    // burger
    Food(
        name: 'aloo tikki burger',
        discription: ' A flavorful, crispy potato patty served in a soft bun, topped with fresh veggies and tangy sauces.',
        imagePath: "lib/images/burger/aloo_tikki_burger.png",
        price: 40,
        category:  FoodCategory.burger,
        availableAddon: [
          Addon(name: 'Extra cheesse', prince: 20),
          Addon(name: 'Red sauce', prince: 5),
          Addon(name: 'extra tikki', prince: 20),
        ]),

    Food(
        name: 'BBQ bacon burger',
        discription: 'A juicy beef patty topped with crispy bacon, melted cheese, and smoky BBQ sauce, served in a toasted bun with fresh lettuce and tomato.',
        imagePath: "lib/images/burger/BBQ_bacon_burger.png",
        price: 120,
        category:  FoodCategory.burger,
        availableAddon: [
          Addon(name: 'Extra cheesse', prince: 20),
          Addon(name: 'Red sauce', prince: 5),
          Addon(name: 'extra bacon', prince: 60),
        ]),

    Food(
        name: 'Chicken burger',
        discription: ' A tender, grilled or crispy chicken patty served in a soft bun with fresh lettuce, tomatoes, and creamy mayo',
        imagePath: "lib/images/burger/chicken_burger.png",
        price: 90,
        category:  FoodCategory.burger,
        availableAddon: [
          Addon(name: 'Extra cheesse', prince: 20),
          Addon(name: 'Red sauce', prince: 5),
          Addon(name: 'extra chicken piece', prince: 40),
        ]),

    Food(
        name: 'Mushroom burger',
        discription: 'A savory, grilled mushroom patty topped with melted cheese, sautéed mushrooms, and fresh greens, served in a toasted bun with garlic aioli.',
        imagePath: "lib/images/burger/Mushroom_burger.png",
        price: 70,
        category:  FoodCategory.burger,
        availableAddon: [
          Addon(name: 'Extra cheesse', prince: 20),
          Addon(name: 'Red sauce', prince: 5),
          Addon(name: 'extra mushroom', prince: 30),
        ]),

    Food(
        name: 'veg burger',
        discription: '  A flavorful vegetable patty made from a mix of fresh veggies and spices, served in a soft bun with crisp lettuce, tomatoes, onions, and tangy mayo or ketchup.',
        imagePath: "lib/images/burger/veg_burger.png",
        price: 50,
        category:  FoodCategory.burger,
        availableAddon: [
          Addon(name: 'Extra cheesse', prince: 20),
          Addon(name: 'Red sauce', prince: 5),
          Addon(name: 'extra salad', prince: 10),
        ]),

    // desserts
    Food(
        name: 'barfi',
        discription: ' A traditional Indian sweet made from condensed milk, flavored with cardamom, and garnished with nuts, often enjoyed during festivals and celebrations.',
        imagePath: "lib/images/deserts/barfi.png",
        price: 250,
        category:  FoodCategory.desserts,
        availableAddon: [
          Addon(name: '1kg ', prince: 250),
          Addon(name: '2 kg', prince: 500),
          Addon(name: '20% of 5kg', prince: 1000),
        ]),

    Food(
      name: 'Gajar ka Halva',
      discription: 'A rich and sweet dessert made from grated carrots, milk, and ghee, garnished with dry fruits, often served warm.',
      imagePath: "lib/images/deserts/gajar_ka_halwa.png",
      price: 300,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: '500g', prince: 150),
        Addon(name: '1kg', prince: 300),
        Addon(name: '2kg', prince: 600),
      ],
    ),

    Food(
      name: 'Gulab Jamun',
      discription: 'Soft, spongy milk-based balls soaked in sweet sugar syrup, flavored with rose water or cardamom, a popular Indian dessert.',
      imagePath: "lib/images/deserts/gulab_jamun.png",
      price: 200,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: '6 pieces', prince: 100),
        Addon(name: '12 pieces', prince: 200),
        Addon(name: '24 pieces', prince: 400),
      ],
    ),

    Food(
      name: 'Jalebi',
      discription: 'A deep-fried spiral-shaped dessert soaked in sugar syrup, known for its crispy texture and sweet flavor, often enjoyed hot.',
      imagePath: "lib/images/deserts/jalebi.png",
      price: 150,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: '250g', prince: 75),
        Addon(name: '500g', prince: 150),
        Addon(name: '1kg', prince: 300),
      ],
    ),

    Food(
      name: 'Rasmalai',
      discription: 'A delicate Indian dessert made with soft paneer balls soaked in sweet, saffron-flavored milk and garnished with nuts.',
      imagePath: "lib/images/deserts/Rasmalai.png",
      price: 350,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: '6 pieces', prince: 175),
        Addon(name: '12 pieces', prince: 350),
        Addon(name: '24 pieces', prince: 700),
      ],
    ),

    // Drinks
    Food(
      name: 'Campa',
      discription: 'A refreshing carbonated soft drink with a blend of fruity flavors, perfect for a cool and satisfying drink.',
      imagePath: "lib/images/drinks/campa.png",
      price: 50,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: '250ml', prince: 30),
        Addon(name: '500ml', prince: 50),
        Addon(name: '1L', prince: 90),
      ],
    ),

    Food(
      name: 'Cock',
      discription: 'A classic fizzy drink with a unique flavor profile, offering a crisp and invigorating taste experience.',
      imagePath: "lib/images/drinks/cock.png",
      price: 60,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: '250ml', prince: 35),
        Addon(name: '500ml', prince: 60),
        Addon(name: '1L', prince: 100),
      ],
    ),

    Food(
      name: 'Fizz',
      discription: 'A sparkling beverage with a tangy and sweet taste, providing a refreshing burst of flavor in every sip.',
      imagePath: "lib/images/drinks/fizz.png",
      price: 55,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: '250ml', prince: 32),
        Addon(name: '500ml', prince: 55),
        Addon(name: '1L', prince: 95),
      ],
    ),

    Food(
      name: 'Pepsi',
      discription: 'A popular soft drink with a bold and distinctive taste, known for its effervescent and thirst-quenching qualities.',
      imagePath: "lib/images/drinks/pepsi.png",
      price: 65,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: '250ml', prince: 35),
        Addon(name: '500ml', prince: 65),
        Addon(name: '1L', prince: 110),
      ],
    ),

    Food(
      name: 'Thumb Up',
      discription: 'A zesty and refreshing carbonated drink with a unique blend of flavors that delivers a satisfying and crisp taste.',
      imagePath: "lib/images/drinks/thumbs_up.png",
      price: 70,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: '250ml', prince: 40),
        Addon(name: '500ml', prince: 70),
        Addon(name: '1L', prince: 120),
      ],
    ),

    // Salads
    Food(
      name: 'Curd Salad',
      discription: 'A refreshing salad made with fresh vegetables and a generous amount of creamy curd, seasoned with herbs and spices for a delightful taste.',
      imagePath: "lib/images/salads/curds_salads.png",
      price: 100,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: 'Small', prince: 50),
        Addon(name: 'Medium', prince: 100),
        Addon(name: 'Large', prince: 150),
      ],
    ),

    Food(
      name: 'Green Salad',
      discription: 'A healthy and vibrant salad featuring a mix of fresh greens, including lettuce, spinach, and cucumbers, tossed in a light vinaigrette dressing.',
      imagePath: "lib/images/salads/green_salad.png",
      price: 90,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: 'Small', prince: 45),
        Addon(name: 'Medium', prince: 90),
        Addon(name: 'Large', prince: 135),
      ],
    ),

    Food(
      name: 'Healthy Protein Salad',
      discription: 'A nutritious salad packed with protein-rich ingredients like beans, chickpeas, and grilled chicken, combined with fresh vegetables and a light dressing.',
      imagePath: "lib/images/salads/healthy_protein_salads.png",
      price: 120,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: 'Small', prince: 60),
        Addon(name: 'Medium', prince: 120),
        Addon(name: 'Large', prince: 180),
      ],
    ),

    Food(
      name: 'Onion Salad',
      discription: 'A simple yet flavorful salad featuring thinly sliced onions, cucumbers, and tomatoes, tossed with a zesty lemon dressing and fresh herbs.',
      imagePath: "lib/images/salads/onion_salad.png",
      price: 80,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: 'Small', prince: 40),
        Addon(name: 'Medium', prince: 80),
        Addon(name: 'Large', prince: 120),
      ],
    ),

    Food(
      name: 'Spice Chickpeas Salad',
      discription: 'A vibrant salad made with spicy chickpeas, mixed with fresh vegetables and herbs, dressed with a tangy lemon or yogurt sauce for extra flavor.',
      imagePath: "lib/images/salads/spice_chickpeas_salad.png",
      price: 110,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: 'Small', prince: 55),
        Addon(name: 'Medium', prince: 110),
        Addon(name: 'Large', prince: 165),
      ],
    ),

    // Sides

    Food(
      name: 'Fries',
      discription: 'Crispy and golden French fries, seasoned to perfection and served hot, ideal as a savory side dish or snack.',
      imagePath: "lib/images/sides/fries.png",
      price: 80,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: 'Small', prince: 40),
        Addon(name: 'Medium', prince: 80),
        Addon(name: 'Large', prince: 120),
      ],
    ),

    Food(
      name: 'Fried Rice',
      discription: 'Flavorful fried rice stir-fried with vegetables, eggs, and soy sauce, providing a satisfying and savory side dish.',
      imagePath: "lib/images/sides/fried_rice.png",
      price: 100,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: 'Small', prince: 50),
        Addon(name: 'Medium', prince: 100),
        Addon(name: 'Large', prince: 150),
      ],
    ),

    Food(
      name: 'Potatoes',
      discription: 'Versatile potato dish served in various styles, such as mashed, baked, or roasted, offering a comforting and hearty side.',
      imagePath: "lib/images/sides/potatoes.png",
      price: 90,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: 'Small', prince: 45),
        Addon(name: 'Medium', prince: 90),
        Addon(name: 'Large', prince: 135),
      ],
    ),

    Food(
      name: 'Bread',
      discription: 'Freshly baked bread, served warm, and perfect for accompanying soups, stews, or main dishes.',
      imagePath: "lib/images/sides/bread.png",
      price: 70,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: 'Single Roll', prince: 30),
        Addon(name: 'Basket of Rolls', prince: 70),
        Addon(name: 'Loaf', prince: 120),
      ],
    ),

    Food(
      name: 'Pasta',
      discription: 'Delicious pasta served with a variety of sauces, such as marinara, Alfredo, or pesto, offering a rich and satisfying side dish.',
      imagePath: "lib/images/sides/pasta.png",
      price: 120,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: 'Small', prince: 60),
        Addon(name: 'Medium', prince: 120),
        Addon(name: 'Large', prince: 180),
      ],
    ),





  ];
  // List<CartItem> _cart = [];
//   void addToCart (Food food , List<Addon> selectedAddons){
//   CartItem? cartItem = _cart.firstWhere((item){
//      bool isSameFood = item.food == food;
//
//      bool isSameAddons = ListEquality().equals(item.selectedAddons , selectedAddons);
//      return isSameFood && isSameAddons;
//   }
// );
//   }
}
