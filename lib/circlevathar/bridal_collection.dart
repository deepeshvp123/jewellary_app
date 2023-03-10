import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

// class scrolleble extends StatefulWidget {
//   const scrolleble({super.key});

//   @override
//   State<scrolleble> createState() => _scrollebleState();
// }
class scrolleble extends StatefulWidget {
  const scrolleble({super.key});

  @override
  State<scrolleble> createState() => _scrollebleState();
}

class _scrollebleState extends State<scrolleble> {
  var images = {
    "women.jpg": "Stunning jewllery collections exclusively for",
    "men1.jpg": "Stunning jewllery collections exclusively for ",
    "childrens.jpg": "Stunning jewllery collections exclusively for",
  };
  List text = [
    "women",
    "Men",
    "Children",
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                    Text(
                      images.values.elementAt(index),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      text[index],
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 170,bottom: 15),
                      child: Row(
                          children: List.generate(3, (indexDots) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 2),
                          height: 6,
                          width: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? Colors.black
                                  : Colors.white),
                                  
                        );
                        
                      }),
                      ),
                      
                    ),
                                  ],
                                ),
                  )),
            );
          }),
    );
  }
}
