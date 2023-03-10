import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jewellary_app/screens/appbar.dart';

class BuynowPage extends StatefulWidget {
  const BuynowPage({super.key});

  @override
  State<BuynowPage> createState() => _BuynowPageState();
}

class _BuynowPageState extends State<BuynowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               hotelpack(
                  imagee: "assets/img/bangle1.jpg",
                  text1: "Traditional cut golden",
                  text2: "bangle",
                  text3: "₹ 1,600",
                  text4: "Flat 5% Off",
                  women: "WOMEN | BANGLE",),
              Gap(320),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Summery",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 43, 20, 48),
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Gap(15),
                    Row(
                      children: [
                        Text(
                          "Traditional Cut Golden",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Gap(85),
                        Text(
                          "₹ 1,600",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Gap(25),
                        Text(
                          "x2",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Gap(25),
                        Text(
                          "₹ 3,200",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      "Bangle",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total :",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "₹ 6,400",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 78, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Get.to(Myappbar());
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 47, 18, 53),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        " Confirm Checkout",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class hotelpack extends StatelessWidget {
  final String imagee;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String women;

  hotelpack({
    required this.imagee,
    required this.text1,
    required this.text2,
    required this.text3,
     required this.text4,
    required this.women,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 8, offset: Offset(1, 2))
            ]),
        child: Stack(children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagee), fit: BoxFit.fill),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          women,
                          style: TextStyle(fontSize: 9, color: Color.fromARGB(255, 40, 10, 46)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          text1,
                          style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 73, 34, 82),
                          fontWeight: FontWeight.w500),
                        ),
                        Text(
                          text2,
                          style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 73, 34, 82),
                          fontWeight: FontWeight.w500),
                        ),
                       Gap(10),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          text3,
                          style: TextStyle(
                              fontSize: 15,
                              ),
                        ),
                          Gap(5),
                        Text(
                          text4,
                          style: TextStyle(
                              fontSize: 10,
                              ),
                        ),
                        ],
                       ),

                       
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130),
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        
                            children: [
                              Text("–",
                              style: TextStyle(
                                
                              ),),
                              Gap(15),
                               Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(3)
                                ),
                                child: Center(child: Text("2")),
                              ),
                               Gap(15),
                               Text("+",
                              style: TextStyle(
                               
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
