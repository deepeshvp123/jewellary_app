import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price":  "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title":  "Traditional cut golden bangle",
      "price":  "₹1600 Flat 5% Off",
      "images": "assets/img/bang3.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title":  "Traditional cut golden bangle",
      "price":  "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price":  "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price":  "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price":  "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title":  "Traditional cut golden bangle",
      "price": "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
     {
      "subtitle": "Women|Bangle",
      "title":  "Traditional cut golden bangle",
      "price":  "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        mainAxisExtent: 310,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 8, offset: Offset(1, 2))
                ],
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                         bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),


                      ),
                      child: Container(
                        child: Image.asset(
                          "${gridMap.elementAt(index)['images']}",
                          height: 170,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${gridMap.elementAt(index)['subtitle']}",
                        style: Theme.of(context).textTheme.subtitle1!.merge(
                              const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 89, 46, 97)
                              ),
                            ),
                      ),
                      Gap(5),
                      Text(
                        "${gridMap.elementAt(index)['title']}",
                        style: Theme.of(context).textTheme.subtitle1!.merge(
                              const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color.fromARGB(255, 89, 46, 97)
                              ),
                            ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "${gridMap.elementAt(index)['price']}",
                        style: Theme.of(context).textTheme.subtitle2!.merge(
                              TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 74, 48, 78),
                              ),
                            ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      // Row(
                      //   children: [
                      //     IconButton(
                      //       onPressed: () {},
                      //       icon: Icon(
                      //         CupertinoIcons.heart,
                      //       ),
                      //     ),
                      //     IconButton(
                      //       onPressed: () {},
                      //       icon: Icon(
                      //         CupertinoIcons.cart,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
