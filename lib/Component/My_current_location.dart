import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context){
    showDialog(context: context, builder:(context)=>
    AlertDialog(
      title: const Text("Your location"),
      content: const TextField(
        decoration: const InputDecoration(hintText:"Search address.."),
      ),
      actions: [
        MaterialButton(onPressed: ()=> Navigator.pop(context),
        child: const Text('cancel'),
        ),
        MaterialButton(onPressed: ()=> Navigator.pop(context),
          child: const Text('Save'),
        ),
      ],
    ),
      
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Diliver Now'),
          GestureDetector(
            onTap : ()=> openLocationSearchBox(context),
            child: Row(
              children: [
                Text(
                  'Punjab ,(Mohali)',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],

      ),
    );
  }
}
