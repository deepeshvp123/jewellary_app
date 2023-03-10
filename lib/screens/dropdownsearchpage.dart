import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jewellary_app/screens/searchbar.dart';
import 'package:jewellary_app/screens/secondpage.dart';

class Dropdownsearch extends StatefulWidget {
  const Dropdownsearch({super.key});

  @override
  State<Dropdownsearch> createState() => _DropdownsearchState();
}

class _DropdownsearchState extends State<Dropdownsearch> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price": "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price": "₹1600 Flat 5% Off",
      "images": "assets/img/bang3.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price": "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price": "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price": "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price": "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price": "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    },
    {
      "subtitle": "Women|Bangle",
      "title": "Traditional cut golden bangle",
      "price": "₹1600 Flat 5% Off",
      "images": "assets/img/bange2.jpg",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        suffix: IconButton(
                            onPressed: () {
                              showSearch(
                                  context: context, delegate: customsearch());
                            },
                            icon: Icon(Icons.search)),
                        hintText: "Search",
                        labelText: "Search",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                  Gap(20),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 195),
                        child: Text(
                          "POPULAR SEARCHES",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ),
                      Gap(10),
                      InkWell(
                        onTap: () {
                          Get.to(Secondpages());
                        },
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
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
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //       color: Colors.grey,
                                    //       blurRadius: 8,
                                    //       offset: Offset(1, 2))
                                    // ],
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    ),
                                    color: Colors.grey.shade200),
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
                                              height: 160,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${gridMap.elementAt(index)['subtitle']}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .merge(
                                                  const TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromARGB(
                                                          255, 89, 46, 97)),
                                                ),
                                          ),
                                          Gap(5),
                                          Text(
                                            "${gridMap.elementAt(index)['title']}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .merge(
                                                  const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 15,
                                                      color: Color.fromARGB(
                                                          255, 89, 46, 97)),
                                                ),
                                          ),
                                          const SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(
                                            "${gridMap.elementAt(index)['price']}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2!
                                                .merge(
                                                  TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromARGB(
                                                        255, 74, 48, 78),
                                                  ),
                                                ),
                                          ),
                                          const SizedBox(
                                            height: 8.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class customsearch extends SearchDelegate {
  List<String> alldata = [
    'Ring',
    'Bangle',
    'Chain',
    'Eearings',
    'Watch',
    'Antic chain',
    'Bracelete',
    'Palakka mala',
    'karumani',
    'sachin',
    'kunthirikkam',
    'second sed',
    'nospin',
    'chutti',
    'elakkathali',
    'gold coins',
    'Thoda',
    'Nagamanikyam',
    'karumani',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchquery = [];
    for (var item in alldata) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchquery.length,
        itemBuilder: (context, index) {
          var result = matchquery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchquery = [];
    for (var item in alldata) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchquery.length,
        itemBuilder: (context, index) {
          var result = matchquery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
