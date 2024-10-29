import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Component/My_button.dart';

import 'model/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon , bool> selectedAddons = {};
FoodPage({super.key, required this.food}){
  for (Addon addon in food.availableAddon){
    selectedAddons[addon] = false;
  }
}


  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Scaffold UI
    Scaffold(

    body: SingleChildScrollView(
    child: Column(
    children: [
    // food image
    Image.asset(widget.food.imagePath),

    Padding(
    padding: const EdgeInsets.all(25.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    widget.food.name,
    style: const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 20),
    ),
    Text(
    'Rs${widget.food.price}',
    style: TextStyle(
    fontSize: 16,
    color: Theme.of(context).colorScheme.primary,
    ),
    ),

    const SizedBox(
    height: 10,
    ),
    // food discription
    Text(
    widget.food.discription,
    ),

    const SizedBox(
    height: 10,
    ),
    Divider(color: Theme.of(context).colorScheme.secondary),
    const SizedBox(
    height: 10,
    ),
    Text(
    "Add-ons",
    style: TextStyle(
    color: Theme.of(context).colorScheme.inversePrimary,
    fontSize: 16,
    fontWeight: FontWeight.bold),
    ),
    SizedBox(
    height: 10,
    ),
    //addons
    Container(
    decoration: BoxDecoration(
    border: Border.all(
    color: Theme.of(context).colorScheme.tertiary),
    borderRadius: BorderRadius.circular(8),
    ),

    child: ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    itemCount: widget.food.availableAddon.length,
    itemBuilder: (context, index) {
    Addon addon = widget.food.availableAddon[index];
    return CheckboxListTile(
    title: Text(addon.name),
    subtitle: Text('Rs${addon.prince}' , style: TextStyle(color: Theme.of(context).colorScheme.primary),),
    value: widget.selectedAddons[addon],
    onChanged: (bool? value) {
    setState(() {
    widget.selectedAddons[addon] = value!;
    });
    });
    },
    ),
    ),
    ],
    ),
    ),
    MyButton(text: "Add to Cart", onTap: (){},),
    const SizedBox(
    height: 25,
    )
    ],
    ),
    ),
    ),


        //back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left:25),
              decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_rounded),
                onPressed: ()=>Navigator.pop(context),
              )
            ),
          ),
        )
      ],
    );
  }
}
