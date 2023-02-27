import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:jewellary_app/circlevathar/bridal_collection.dart';

class Myappbar extends StatefulWidget {
  const Myappbar({super.key});

  @override
  State<Myappbar> createState() => _MyappbarState();
}

class _MyappbarState extends State<Myappbar> {
  //List imagess = ["immmm.jpg", "img3.jpg", "img1.jpg", "images.jpg"];
  @override
  Widget build(BuildContext context) {
    var images = {
      "bangle.jpg": "Bangle",
      "images.jpg": "Earring ",
      "img1.jpg": "Bracellet",
      "img2.jpg": "kids",
      "img3.jpg": "platinum",
      "img4.jpg": "earing",
    };
    var imagess = {
      "immmm.jpg": "Bridal Collection",
      "img3.jpg": "Costume Design ",
      "img1.jpg": "Traditional Collection",
      "images.jpg": "kids Jewllery",

      //  "immmm.jpg", "img3.jpg", "img1.jpg", "images.jpg"
    };
    var bangles = {
      "bangle4.jpg"
      "bangle4.jpg",
      "bangle3.jpg",
      "bangle.jpg",
      "bange2.jpg",
      "immmm.jpg"
    };
    // List imagess = ["immmm.jpg", "img3.jpg", "img1.jpg", "images.jpg"];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          Padding(padding: EdgeInsets.only(left: 25)),
          Icon(
            Icons.notifications_active_outlined,
            color: Colors.black,
          ),
          Padding(padding: EdgeInsets.only(left: 35)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow

                      offset: Offset(
                        5.0, // Move to right 5  horizontally
                        5.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 6,
                    ),
                    Icon(Icons.search),
                    // ignore: prefer_const_constructors
                    SizedBox(width: 5),
                    Text(
                      "Search",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Gap(20),
              Container(
                height: 110,
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 10),
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, Index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage("assets/img/" +
                                        images.keys.elementAt(Index)),
                                    // image: AssetImage("assets/images/" +
                                    //     images.keys.elementAt(Index)),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Text(
                                images.values.elementAt(Index),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Gap(5),
              Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 150,
                    //color: Colors.black,
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagess.length,
                      itemBuilder: (_, index) {
                        return Container(
                          width: double.maxFinite,
                          // height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img/" +
                                      imagess.keys.elementAt(index)),
                                  // AssetImage("assets/img/ " + imagess[index]),
                                  fit: BoxFit.fill)),
                          child: Container(
                            margin: EdgeInsets.only(top: 60, left: 142),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(imagess.values.elementAt(index),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Gap(10),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 210, top: 2)),
                                    ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white),
                                        child: Text(
                                          "ShopNow",
                                          style: TextStyle(color: Colors.black),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Gap(10),
                  Container(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(7, (index) {
                        return Container(
                          width: 10,
                          height: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black54),
                        );
                      }),
                    ),
                  ),
                  Gap(10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New Arrivels",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Gap(8),
                      Text("Our latest releases exclusively for you",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),

                  // Row(children: [
                  //   ListView.builder(itemBuilder: (_, index) {
                  //     return Container(
                  //       child: Row(

                  //       ),
                  //     );
                  //   })
                  // ])
                  Gap(10),

                  Container(
                    height: 150,
                    width: double.maxFinite,
                    child: ListView.builder(
                        itemCount: 5,
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
                                          image: AssetImage("assets/img/" +
                                              bangles.elementAt(index)),
                                          fit: BoxFit.cover)),
                                )
                              ],
                            ),
                          );
                        }),
                  ),

                  Gap(40),
                  Container(
                    height: 155,
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img/bangle1.jpg"),
                                  fit: BoxFit.fill)),
                          child: Container(
                            // margin: EdgeInsets.only(top: 20, left: 40),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 180, top: 40),
                                      child: Text("Best Offers On Bangles",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Gap(8),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 180),
                                      child: Text(
                                          "15+designs Starts From \$ 26400",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Gap(10),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 220),
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white),
                                          child: Text(
                                            "Up to 50% off",
                                            style:
                                                TextStyle(color: Colors.black),
                                          )),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Gap(20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Shop by Gender",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Gap(8),
                      Text("Exclusively Collection for women,children & men",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),

                  Gap(10),
                  Column(
                    children: [
                      Container(
                        height: 350,
                       // color:  Colors.red,
                        child: scrolleble(),
                      )
                    ],
                  ),
                   Gap(10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
