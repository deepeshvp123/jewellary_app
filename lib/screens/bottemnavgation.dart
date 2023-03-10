import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewellary_app/cartdetails/buynowpage.dart';
import 'package:jewellary_app/cartdetails/cartpagee.dart';
import 'package:jewellary_app/screens/appbar.dart';
import 'package:jewellary_app/screens/dropdownsearchpage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class SalomonBottomNavBar extends StatefulWidget {
  const SalomonBottomNavBar({Key? key}) : super(key: key);

  @override
  _SalomonBottomNavBarState createState() => _SalomonBottomNavBarState();
}

class _SalomonBottomNavBarState extends State<SalomonBottomNavBar> {
  int _currentIndex = 0;

  
  List pages = [
    Myappbar(),
    Dropdownsearch(),
    Cardpage(),
    BuynowPage()


  ];

  void onTap(int, index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        margin: EdgeInsets.symmetric(vertical:10, horizontal: 20),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple),
          SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.pink),
          SalomonBottomBarItem(
              icon: Icon(Icons.card_travel_rounded),
              title: Text("Cart"),
              selectedColor: Colors.orange),
          SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal)
        ],
      ),
    );
  }
}
