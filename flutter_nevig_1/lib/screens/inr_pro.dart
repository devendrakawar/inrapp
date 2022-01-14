import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_nevig_1/screens/addmony.dart';
import 'package:flutter_nevig_1/screens/drawer_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_nevig_1/screens/editprofile.dart';

import 'package:flutter_nevig_1/screens/pass_book.dart';
import 'package:flutter_nevig_1/screens/profile.dart';
import 'package:flutter_nevig_1/screens/sendmony.dart';
import 'package:flutter_nevig_1/screens/service.dart';
import 'package:flutter_nevig_1/screens/user.dart';
import 'package:http/http.dart' as http;
import './rech_screen.dart';
import './partner_screen.dart';
import './store_scree.dart';
import 'package:url_launcher/url_launcher.dart';
import './pass_book.dart';

// ignore: camel_case_types
class inrpro extends StatefulWidget {
  @override
  State<inrpro> createState() => _InrproState();
}

class _InrproState extends State<inrpro> {
  getBanner() async {
    final response = await http.post(
      Uri.parse('https://developer.satmatgroup.com/coinlee/applogin/getBanner'),
    );

    final parsedJson = json.decode(response.body);
    print(parsedJson);

    if (parsedJson['status'] == true) {
      for (int i = 0; i < parsedJson['result'].length; i++) {
        newBanner.add(parsedJson['result'][i]['banner_image']);
      }
      setState(() {
        newBanner;
      });
    }
  }

  var body;

  List newBanner = [];
  void initState() {
    getBanner();
    super.initState();
  }

  _launchURL() async {
    const url = 'https://www.amazon.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  rechURL() async {
    const url = 'https://www.dishtv.in';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  mov() async {
    const url = ' www.indiapress.org';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      drawer: drawerscreen(),
      appBar: AppBar(
        actions: <Widget>[
          new IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Photo()));
            },
            icon: Icon(Icons.account_circle),
          )
        ],
        title: Center(
          child: Text(
            'INR PRO',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFD81B60), Color(0xFF880E4F)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFD81B60), Color(0xFF880E4F)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                      iconSize: 31,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Store()));
                      }),
                  Text(
                    'STORE',
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: Icon(Icons.home, color: Colors.white),
                      iconSize: 31,
                      onPressed: () {}),
                  Text(
                    'HOME',
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: Icon(Icons.notifications, color: Colors.white),
                      iconSize: 31,
                      onPressed: () {}),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      'NOTIFICATION',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 25),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(11),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Wallet',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Addmony()));
                                  },
                                  icon: Image.asset(
                                    'image/add.png',
                                  ),
                                  iconSize: 41,
                                ),
                                Text(
                                  'Add Money',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomeScreen()));
                                  },
                                  icon: Image.asset('image/wall.png'),
                                  iconSize: 41,
                                ),
                                Text(
                                  'Send Money',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('image/bag.png'),
                                  iconSize: 41,
                                ),
                                Text(
                                  'Shopping',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Passbook()));
                                  },
                                  icon: Image.asset('image/book.png'),
                                  iconSize: 41,
                                ),
                                Text(
                                  'Passbook',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 150,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Affliate Balance',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Image.asset(
                                  'image/pack.png',
                                  height: 30,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Text(
                                  'Cashback Points',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Image.asset(
                                    'image/rup.png',
                                    height: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CarouselSlider(
                items: newBanner.map((i) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(i),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  });
                }).toList(),
                options: CarouselOptions(
                  height: 150.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(seconds: 4),
                  viewportFraction: 0.9,
                )),
            Container(
              margin: EdgeInsets.all(5),
              height: 340,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 20,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('  Recharge And Bills',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => rechscreen()));
                            },
                            child: Text(
                              'see more>>',
                              style: TextStyle(
                                  color: Colors.pink[800],
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  userdata()));
                                    },
                                    icon: Image.asset('image/mob.png'),
                                    iconSize: 31,
                                  ),
                                  Text(
                                    'Mobile',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 100)),
                                  IconButton(
                                    onPressed: rechURL,
                                    icon: Image.asset('image/dish.png'),
                                    iconSize: 31,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      'DTH',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: mov,
                                    icon: Image.asset('image/flash.png'),
                                    iconSize: 31,
                                  ),
                                  Text(
                                    'Electricity',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('image/button.png'),
                                    iconSize: 31,
                                  ),
                                  Text(
                                    'Loan ',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'Repayment',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 100)),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('image/gas.png'),
                                    iconSize: 31,
                                  ),
                                  Text(
                                    'Cylinder ',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('image/belt.png'),
                                    iconSize: 31,
                                  ),
                                  Text(
                                    'Gas   ',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    ' Connection  ',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('image/mon.png'),
                                    iconSize: 31,
                                  ),
                                  Text(
                                    'Credit Card ',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('image/gadi.png'),
                                    iconSize: 31,
                                  ),
                                  Text(
                                    'Fastag ',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 100)),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('image/water.png'),
                                    iconSize: 31,
                                  ),
                                  Text(
                                    'Water ',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('image/manu.png'),
                                    iconSize: 31,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      'Insurance  ',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('image/home.png'),
                                    iconSize: 31,
                                  ),
                                  Text(
                                    'Muncipa ',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('image/host.png'),
                                    iconSize: 31,
                                  ),
                                  Text(
                                    'Hospital ',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      elevation: 21,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'image/offers.png',
                              ),
                              iconSize: 22,
                            ),
                            Text('Offers'),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 21,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(5), // if you need this
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/world.png'),
                              iconSize: 31,
                            ),
                            Text(
                              'Rewards',
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                            )
                          ],
                        ),
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Card(
                      elevation: 21,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/refer.png')),
                            Text('Refers')
                          ],
                        ),
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            /*Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 21,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(width: 1)),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'image/super.png',
                              ),
                              Text('INR Primium'),
                              Text('₹ 10,500')
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 21,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 1),
                          // if you need this
                        ),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset('image/sale.png'),
                              Text(
                                'INR Primium',
                              ),
                              Text('₹ 10,500'),
                              Align(
                                alignment: Alignment.bottomLeft,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 21,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(width: 1)),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset('image/super.png'),
                              Text('INR Primium'),
                              Text('₹ 10,500')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            */
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.white,
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      elevation: 21,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 0)),
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'image/super.png',
                              height: 200,
                            ),
                            Text('INR Primium'),
                            Text('₹ 10,500')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 21,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 0)),
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'image/super.png',
                              height: 200,
                            ),
                            Text('INR Primium'),
                            Text('₹ 10,500')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 21,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 0)),
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'image/super.png',
                              height: 200,
                            ),
                            Text('INR Primium'),
                            Text('₹ 10,500')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 170,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 10,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Expanded(
                        child: Text(
                          'Our Affiliate Partner ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => partner()));
                          },
                          child: Text('see more>>',
                              style: TextStyle(
                                  color: Colors.pink[800],
                                  fontWeight: FontWeight.bold)))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: _launchURL,
                            icon: Image.asset(
                              'image/amg.png',
                            ),
                            iconSize: 51,
                          ),
                          Text("Amazon")
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('image/flip.png'),
                            iconSize: 55,
                          ),
                          Text("Flikart")
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('image/tata.png'),
                            iconSize: 51,
                          ),
                          Text("TATA")
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('image/road.png'),
                            iconSize: 51,
                          ),
                          Text("Limerc")
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
    return scaffold;
  }
}
