import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewellary_app/screens/appbar.dart';
import 'package:jewellary_app/screens/bottemnavgation.dart';
import 'package:jewellary_app/screens/searchbar.dart';
import 'package:jewellary_app/screens/secondpage.dart';
import 'package:jewellary_app/thirdpage/cart.dart';

void main(List<String> args) {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash(),
  ));
}

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      //BottemNavigation()
      //Secondpages(),
      //Myappbar(),
      CartPage(),
      //HomePage(),
      
    );
  }
}
