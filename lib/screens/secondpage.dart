import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jewellary_app/secondpage/listviewbulder.dart';

class Secondpages extends StatefulWidget {
  const Secondpages({super.key});

  @override
  State<Secondpages> createState() => _SecondpagesState();
}

class _SecondpagesState extends State<Secondpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
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
                        child: Container(
                          // margin: EdgeInsets.only(top: 20, left: 40),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 60),
                                child: IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(Icons.arrow_back_ios),
                                  color: Colors.white,
                                ),
                              ),
                              Column(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(left: 180, top: 40),
                                    child: Text("Best Offers On Bangles",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Gap(8),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 180),
                                    child: Text(
                                        "15+designs Starts From \$ 26400",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const Gap(10),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 220),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white),
                                        child: const Text(
                                          "Up to 50% off",
                                          style: TextStyle(color: Colors.black),
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
              ],
            ),
           
             Padding(
               padding: const EdgeInsets.all(20),
               child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                   
                  ),
                  child: Row(
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
             Gap(20),

           GridB(), 
            
          ],
        ),
        
      ),
    );
  }
}
