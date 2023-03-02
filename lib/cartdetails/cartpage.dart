import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// class CartPage2 extends StatefulWidget {
//   const CartPage2({super.key});

//   @override
//   State<CartPage2> createState() => _CartPage2State();
// }

// class _CartPage2State extends State<CartPage2> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class packages extends StatefulWidget {
  @override
  State<packages> createState() => _packagesState();
}

class _packagesState extends State<packages> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: IconButton(onPressed: (){

              }, icon: Icon(Icons.arrow_back_ios),
              ),
              
            ),
            
            
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("Cart",
            style: TextStyle(color: Colors.black,
            fontSize: 17),
            ),
          )
        ],
      ),
      width: double.infinity,
      // child: SingleChildScrollView(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       hotelpack(
      //           imagee: "assets/img/bangle1.jpg",
      //           text1: "crown plaza",
      //           text2: "a five star hotelin kochi",
      //           text3: "\$180/night"),
      //       hotelpack(
      //           imagee: "assets/img/bangle1.jpg",
      //           text1: "crown plaza",
      //           text2: "a five star hotelin kochi",
      //           text3: "\$180/night"),
          
      //     ],
      //   ),
      // ),
    );
  }
}

class hotelpack extends StatelessWidget {
  final String imagee;
  final String text1;
  final String text2;
  final String text3;

  hotelpack({
    required this.imagee,
    required this.text1,
    required this.text2,
    required this.text3,
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
                  height: 120,
                  width: 120,
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
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          text2,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          text3,
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 9, 110, 192)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [],
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
