import 'package:flutter/material.dart';
import 'package:food_delivery/LoginPages.dart';
import 'package:food_delivery/RegisterNow.dart';

class LoginOrRegister extends StatefulWidget {

  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  @override
  bool showLoginPage = true;

 void togglePages(){
   setState(() {
     showLoginPage = !showLoginPage;
   });
 }
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: togglePages);
    }else{
      return RegisterPage(onTap: togglePages);
    }
  }
}
