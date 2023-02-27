import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
  List imag = [
    "bangle4.jpg"
        "bangle4.jpg",
    "bangle3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imag.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/" + imag[index]),
                      fit: BoxFit.cover)),
              child: Container(
                //margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // AppLargeText(text: "Trips"),
                        Text("Trips"),
                        Text(
                          "Mountain",
                          style: TextStyle(fontSize: 30),
                        ),
                        Container(
                          width: 250,
                          child: Text(
                            "Mountain Hikes gives you an incredible sense of freedom along with endurance tests",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            // BlocProvider.of<AppCubits>(context).getData();
                          },
                          child: Container(
                              width: 200,
                              child: Row(children: [
                                ElevatedButton(
                                    onPressed: () {}, child: Text("shop"))
                              ])),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 170,),
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
                                  : Colors.grey),
                        );
                      })),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
