import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "white sneaker with adidas logo",
      "price": "\$255",
      "images":
          "assets/img/bange2.jpg",
    },
    {
      "title": "Black Jeans with blue stripes",
      "price": "\$245",
      "images":
          "assets/img/bange2.jpg",
    },
    {
      "title": "Red shoes with black stripes",
      "price": "\$155",
      "images":
           "assets/img/bange2.jpg",
    },
    {
      "title": "Gamma shoes with beta brand.",
      "price": "\$275",
      "images":
           "assets/img/bange2.jpg",
    },
    {
      "title": "Alpha t-shirt for alpha testers.",
      "price": "\$25",
      "images":
          "assets/img/bange2.jpg",
    },
    {
      "title": "Beta jeans for beta testers",
      "price": "\$27",
      "images":
           "assets/img/bange2.jpg",
    },
    {
      "title": "V&V  model white t shirts.",
      "price": "\$55",
      "images":
           "assets/img/bange2.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 310,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Colors.amberAccent.shade100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                 child: Image.
                 asset("${gridMap.elementAt(index)['images']}",//network(
                //   "${gridMap.elementAt(index)['images']}",
                  height: 170,
                 width: double.infinity,
                   fit: BoxFit.cover,
                 ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
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
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade500,
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.heart,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.cart,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}