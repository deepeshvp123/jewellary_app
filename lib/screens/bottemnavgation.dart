import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottemNavigation extends StatelessWidget {
  const BottemNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        
          rippleColor: Colors.black, // tab button ripple color when pressed
          hoverColor: Colors.greenAccent, // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 20,
          tabActiveBorder:
              Border.all(color: Colors.black, width: 1), // tab button border
          tabBorder:
              Border.all(color: Colors.grey, width: 1), // tab button border
          tabShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 8)
          ], // tab button shadow
          curve: Curves.easeOutExpo, // tab animation curves
         // duration: Duration(milliseconds: 50), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.black, // unselected icon color
          activeColor: Colors.purple, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor:
              Colors.purple.withOpacity(0.1), // selected tab background color
          padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: 5), // navigation bar padding
          tabs: [
            GButton(
              //icon: LineIcons.home,
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            )
          ]),
    );
  }
}
