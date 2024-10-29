


import 'package:flutter/material.dart';
import 'package:food_delivery/LoginPages.dart';
import 'package:food_delivery/RegisterNow.dart';
import 'package:food_delivery/Themes/theme_provider.dart';
import 'package:food_delivery/login_or_registration.dart';
import 'package:food_delivery/model/restaurant.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=> ThemeProvider(),),
      ChangeNotifierProvider(create: (context)=> Restaurant(),),
    ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
 debugShowCheckedModeBanner: false,
        home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );

  }
}
