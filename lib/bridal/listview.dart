import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Listvieww extends StatefulWidget {
  const Listvieww({super.key});

  @override
  State<Listvieww> createState() => _ListviewwState();
}

class _ListviewwState extends State<Listvieww> {
  var rings = {
    "immmm.jpg": "Dapper 22 k gold ring ",
    "img3.jpg": " Dapper 22 k Yellow gold ring",
    "img1.jpg": "Edgy geometric Platinum ring ",
    "images.jpg": "Absract 22 karat gold ring ",
  };

  var text = {"₹13050", "₹41133", "₹31025", "₹10582"};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(
          4,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage("assets/img/" + rings.keys.elementAt(index)),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        rings.values.elementAt(index),
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      Text(
                        text.elementAt(index),
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
