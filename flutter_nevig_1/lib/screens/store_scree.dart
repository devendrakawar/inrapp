// ignore_for_file: unused_import

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/drawer_screen.dart';
import 'package:flutter_nevig_1/screens/near.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:url_launcher/link.dart';
import './near.dart';

class Store extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.home)],
        toolbarHeight: 60,
        backgroundColor: Colors.pink[800],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.format_align_left,
                    color: Colors.pink[800],
                  ),
                  iconSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: 40,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: TextField(
                    cursorColor: Colors.pink[800],
                    controller: searchcontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(2),
                        hintText: 'Search',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.pink[800],
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45),
                            borderSide: new BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(color: Colors.pink.shade800))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.pink[800],
                  ),
                  iconSize: 35,
                ),
              )
            ],
          ),
          Container(
            height: 120,
            child: CarouselSlider(
                items: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            'image/gra.png',
                          ),
                        )),
                  ),
                ],
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(
                      seconds: 2,
                    ))),
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: 340,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.only(top: 1, left: 10, right: 10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shops Near Me ',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View All>>',
                          style: TextStyle(
                              color: Colors.pink[800],
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.white,
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Market()));
                          },
                          icon: Image.asset(
                            'image/mark.png',
                          ),
                          iconSize: 200,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'image/mark.png',
                          ),
                          iconSize: 200,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'image/mark.png',
                          ),
                          iconSize: 200,
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: 180,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.only(top: 1, left: 10, right: 10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories ',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All>>',
                            style: TextStyle(
                                color: Colors.pink[800],
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.white,
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset('image/fash.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'image/kit.png',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('image/gro.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('image/fash.png'),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(0),
            height: 90,
            child: CarouselSlider(
                items: [
                  Container(
                    padding: EdgeInsets.only(top: 22),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            'image/fest.png',
                          ),
                        )),
                  ),
                ],
                options: CarouselOptions(
                    autoPlay: false,
                    autoPlayInterval: Duration(
                      seconds: 2,
                    ))),
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: 710,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.only(top: 1, left: 10, right: 10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Offers ',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All>>',
                            style: TextStyle(
                                color: Colors.pink[800],
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'image/hir.png',
                              height: 180,
                            ),
                            Text('Modern Sofa'),
                            Text(
                              '₹ 23,000 ',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'image/blue.png',
                              height: 180,
                            ),
                            Text(
                              'Realme5 ',
                            ),
                            Text(
                              '₹ 23,000 ',
                            ),
                          ],
                        )
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'image/cot.png',
                              height: 180,
                            ),
                            Text(
                              'Western Style Shervani',
                            ),
                            Text('₹ 23,000 '),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'image/tshirt.png',
                              height: 180,
                            ),
                            Text('Printed White T-Shirt'),
                            Text('₹ 23,000 '),
                          ],
                        )
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'image/sadi.png',
                              height: 180,
                            ),
                            Text(
                              'Silk Sari,Modern Design',
                            ),
                            Text(
                              '₹ 23,000 ',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'image/lg.png',
                              height: 180,
                            ),
                            Text('LG Refrigator')
                          ],
                        )
                      ]),
                ]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: 580,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.only(top: 1),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'Best Sellers ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 300)),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                'image/cot.png',
                                height: 180,
                              ),
                              Text(
                                'Print Classic Mens Blezer',
                              ),
                              Text(
                                '₹ 23,000 ',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                'image/cot.png',
                                height: 180,
                              ),
                              Text(
                                'Print Classic Mens Blezer',
                              ),
                              Text(
                                '₹ 23,000 ',
                              ),
                            ],
                          ),
                        )
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                'image/cot.png',
                                height: 180,
                              ),
                              Text(
                                'Print Classic Mens Blezer',
                              ),
                              Text('₹ 23,000')
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                'image/cot.png',
                                height: 180,
                              ),
                              Text(
                                'Print Classic Mens Blezer',
                              ),
                              Text('₹ 23,000')
                            ],
                          ),
                        )
                      ]),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 /*mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.format_align_left,
                        color: Colors.pink[800],
                      )),
                  Expanded(
                      child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: TextField(
                      controller: namecontrolle,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: new BorderSide(color: Colors.black))),
                    ),
                  )),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag,
                      color: Colors.pink[800],
                    ),
                  )
                  */