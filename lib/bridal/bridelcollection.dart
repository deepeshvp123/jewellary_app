import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class Bridalcollection extends StatefulWidget {
  const Bridalcollection({super.key});

  @override
  State<Bridalcollection> createState() => _BridalcollectionState();
}

class _BridalcollectionState extends State<Bridalcollection> {
  var images = {
    "diamond.jpg": "Explore the world of ",
    "gold.jpg": "Explore the world of ",
    "platinum.jpg": "Explore the world of",
  };
  List text = [
    "Diamond",
    "Gold ",
    "Platinum",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/img/" + images.keys.elementAt(index)),
                      fit: BoxFit.cover)),
              child: Container(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 250,right: 170
                    ),
                    child: Text(
                      images.values.elementAt(index),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  // Gap(5),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text(
                      text[index],
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )),
            );
          }),
    );
  }
}
