import 'package:flutter/material.dart';
import 'package:jewellary_app/screens/appbar.dart';
import 'package:jewellary_app/screens/bottemnavgation.dart';

void main(List<String> args) {
  runApp(MaterialApp(
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
      Myappbar(),
      
    );
  }
}
