import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jewellary_app/screens/searchbar.dart';
import 'package:jewellary_app/widgets/appbutton.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(8.0),
            bottomRight: Radius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/bang2.jpg"),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 260, left: 20, right: 20),
                    child: Container(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                // Get.back();
                              },
                              icon: Icon(Icons.arrow_back_ios)),
                          Padding(
                            padding: const EdgeInsets.only(left: 260),
                            child: Icon(Icons.favorite_border),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Icon(Icons.share),
                          ),
                        ],
                      ),
                    ),
                  )),
              Gap(20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "WOMEN | BANGLE",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Gap(10),
                        Text(
                          "ADCOOOOOO2454",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                         Gap(10),
                        Text(
                          "Traditional cut golden",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                         
                        Text(
                          "bangle",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                         Gap(10),
                        Row(
                          children: [
                            Text(
                              "₹ 11,003",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " inclusive of all taxes",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Gap(25),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              " Choose size",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                             Gap(10),
                             Wrap(
                          children: List.generate(5, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: AppButtons(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                  backgroundColor: selectedIndex == index
                                      ? Colors.black
                                      : Colors.white,
                                  size: 50,
                                  borderColor: selectedIndex == index
                                      ? Colors.black
                                      : Colors.black,
                                  text: (index + 10).toString(),
                                ),
                              ),
                            );
                          }),
                        ),
                          ],
                        ),
                        Gap(10),
                         Text(
                              "Availability :  In stock",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                             Gap(30),

                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: DecorationImage(image: AssetImage("assets/img/biss-removebg-preview.png"),
                                    fit: BoxFit.cover)
                                  ),
                                ),
                                Gap(30),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/img/igicertificate.png",
                                    ),
                                    fit: BoxFit.cover)
                                  ),
                                )
                              ],
                            )
                       
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
