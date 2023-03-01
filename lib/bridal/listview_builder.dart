import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bilder extends StatefulWidget {
  const Bilder({super.key});

  @override
  State<Bilder> createState() => _BilderState();
}

class _BilderState extends State<Bilder> {
  var bang = {
    "bang1.jpg": "Bangle",
    "bang2.jpg": "Earring ",
    "bang3.jpg": "Bracellet",
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Container(
              margin: EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/img/" + bang.keys.elementAt(index)),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            );
          }),
    );
  }
}
