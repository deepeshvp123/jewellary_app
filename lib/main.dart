import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewellary_app/cartdetails/buynowpage.dart';

import 'package:jewellary_app/cartdetails/cartpagee.dart';
import 'package:jewellary_app/cartdetails/wishlist.dart';
import 'package:jewellary_app/screens/appbar.dart';
import 'package:jewellary_app/screens/bottemnavgation.dart';
import 'package:jewellary_app/screens/dropdownsearchpage.dart';
import 'package:jewellary_app/screens/searchbar.dart';
import 'package:jewellary_app/screens/secondpage.dart';
import 'package:jewellary_app/screens/splash_screen.dart';
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
           // Myappbar(),
            //CartPage(),
            //HomePage(),
            // packages(),
           // Cardpage(),
           //Wishlist(),
          // BuynowPage(),
         // SalomonBottomNavBar(),
         //Dropdownsearch()
       //SalomonBottomNavBar(),
       SplashScreen(),
      
          

            );

  }
}
