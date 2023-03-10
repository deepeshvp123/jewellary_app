import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jewellary_app/bridal/bridelcollection.dart';
import 'package:jewellary_app/bridal/listview.dart';
import 'package:jewellary_app/bridal/listview_builder.dart';
import 'package:jewellary_app/circlevathar/bridal_collection.dart';
import 'package:jewellary_app/screens/dropdownsearchpage.dart';
import 'package:jewellary_app/screens/secondpage.dart';

class Myappbar extends StatefulWidget {
  const Myappbar({super.key});

  @override
  State<Myappbar> createState() => _MyappbarState();
}

class _MyappbarState extends State<Myappbar> {
  TextEditingController textarea = TextEditingController();
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
      "blob.png": "Bridal Collection",
      "img3.jpg": "Costume Design ",
      "img1.jpg": "Traditional Collection",
      "images.jpg": "kids Jewllery",
    };
    var bangles = {
      "bangle3.jpg",
      "bang2.jpg",
      "bangle4.jpg",
      "bangle.jpg",
      "bang3.jpg"
    };

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          const Padding(padding: EdgeInsets.only(left: 25)),
          const Icon(
            Icons.notifications_active_outlined,
            color: Colors.black,
          ),
          const Padding(padding: EdgeInsets.only(left: 35)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: InkWell(
                onTap: () {
                  Get.to(const Dropdownsearch());
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Color.fromARGB(255, 202, 202, 202),
                        blurRadius: 2.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow

                        offset: Offset(
                          2.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(
                        width: 6,
                      ),
                      const Icon(Icons.search),
                      // ignore: prefer_const_constructors
                      SizedBox(width: 5),
                      const Text(
                        "Search",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Gap(20),
            InkWell(
              onTap: () {
                Get.to(const Secondpages());
              },
              child: Container(
                height: 110,
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 10),
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, Index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100)),
                                color: Colors.white,
                                image: DecorationImage(
                                    // ignore: prefer_interpolation_to_compose_strings
                                    image: AssetImage("assets/img/" +
                                        images.keys.elementAt(Index)),
                                    // image: AssetImage("assets/images/" +
                                    //     images.keys.elementAt(Index)),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Text(
                                images.values.elementAt(Index),
                                style: const TextStyle(
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
            ),
            const Gap(5),
            Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 180,
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
                                // ignore: prefer_interpolation_to_compose_strings
                                image: AssetImage("assets/img/" +
                                    imagess.keys.elementAt(index)),
                                // AssetImage("assets/img/ " + imagess[index]),
                                fit: BoxFit.fill)),

                        child: Padding(
                          padding: const EdgeInsets.only(top: 90, right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(imagess.values.elementAt(index),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                              const Gap(10),
                              const Padding(
                                  padding: EdgeInsets.only(
                                left: 200,
                              )),
                              ElevatedButton(
                                  onPressed: () {
                                    Get.to(const Secondpages());
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  child: const Text(
                                    "ShopNow",
                                    style: TextStyle(color: Colors.black),
                                  ))
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Gap(10),
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
                const Gap(10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "New Arrivels",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Gap(8),
                    const Text("Our latest releases exclusively for you",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const Gap(10),
                InkWell(
                  onTap: () {
                    Get.to(const Secondpages());
                  },
                  child: Container(
                    height: 150,
                    width: double.maxFinite,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      // color: Colors.red,
                                      image: DecorationImage(
                                          // ignore: prefer_interpolation_to_compose_strings
                                          image: AssetImage("assets/img/" +
                                              bangles.elementAt(index)),
                                          fit: BoxFit.cover)),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                const Gap(40),
                Container(
                  height: 155,
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img/bangle1.jpg"),
                                fit: BoxFit.fill)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only( top: 50),
                                child: Text("Best Offers On Bangles",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const Gap(8),
                              Text("15+designs Starts From \$ 26400",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              const Gap(10),
                              ElevatedButton(
                                  onPressed: () {
                                    Get.to(const Secondpages());
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  child: const Text(
                                    "Up to 50% off",
                                    style: TextStyle(color: Colors.black),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Shop by Gender",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Gap(8),
                    const Text(
                        "Exclusively Collection for women,children & men",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const Gap(10),
                Column(
                  children: [
                    Container(
                      height: 350,
                      // color:  Colors.red,
                      child: InkWell(
                          onTap: () {
                            Get.to(const Secondpages());
                          },
                          child: const scrolleble()),
                    )
                  ],
                ),
                const Gap(40),
                     Container(
                  height: 155,
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img/bangle1.jpg"),
                                fit: BoxFit.fill)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only( top: 40),
                                child: Text("Best Offers On Bangles",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const Gap(8),
                              Text("15+designs Starts From \$ 26400",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              const Gap(10),
                              ElevatedButton(
                                  onPressed: () {
                                    Get.to(const Secondpages());
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  child: const Text(
                                    "Up to 50% off",
                                    style: TextStyle(color: Colors.black),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                
                const Gap(20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Shop by Gender",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Gap(8),
                    const Text(
                        "Exclusively Collection for women,children & men",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const Gap(10),
                Column(
                  children: [
                    Container(
                      height: 350,
                      // color:  Colors.red,
                      child: const Bridalcollection(),
                    )
                  ],
                ),
                const Gap(20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Explore The World of Rings",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Gap(8),
                    const Text(
                        "Exclusively Collection for Diamonds,Gold & Platinum",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    const Gap(8),
                    Container(
                      height: 350,
                      child: InkWell(
                        onTap: () {
                          Get.to(const Secondpages());
                        },
                        child: Container(
                          child: const Listvieww(),
                        ),
                      ),
                    ),
                    const Gap(10),
                    Container(
                  height: 155,
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img/bangle1.jpg"),
                                fit: BoxFit.fill)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15,bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only( top: 40),
                                child: Text("Best Offers On Bangles",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const Gap(8),
                              Text("15+designs Starts From \$ 26400",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              const Gap(10),
                              ElevatedButton(
                                  onPressed: () {
                                    Get.to(const Secondpages());
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  child: const Text(
                                    "Up to 50% off",
                                    style: TextStyle(color: Colors.black),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                    const Gap(20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Explore the world of rings",
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const Gap(8),
                        const Text(
                            "Exclusively Collection for Diamond,Gold & platinum \n  Rings ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const Gap(20),
                    Container(
                      height: 150,
                      child: Container(
                        child: const Bilder(),
                      ),
                    ),
                    const Gap(20),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
