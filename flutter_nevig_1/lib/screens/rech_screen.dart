import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/store_scree.dart';

class rechscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            new IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
          ],
          title: Center(
            child: Text(
              'INR PRO',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ),
          backgroundColor: Colors.pink[800]),
      body: Container(
        margin: EdgeInsets.all(5),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 150,
              width: 500,
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
                            'Recharge',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'image/mob.png',
                                ),
                                iconSize: 31,
                              ),
                              Text('Mobile')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/dish.png'),
                                iconSize: 31,
                              ),
                              Text('DTH')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/gadi.png'),
                                iconSize: 31,
                              ),
                              Text('Fastag')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/tv.png'),
                                iconSize: 31,
                              ),
                              Text('Cable TV')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 200,
              width: 382,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 10,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 11)),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text('Utilities',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/gas.png'),
                              iconSize: 31,
                            ),
                            Text('Cylinder')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/belt.png'),
                              iconSize: 31,
                            ),
                            Text('Gas'),
                            Text('Connection')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/water.png'),
                              iconSize: 31,
                            ),
                            Text('Water')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/flash.png'),
                              iconSize: 31,
                            ),
                            Text('Electricity')
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/mob.png'),
                              iconSize: 31,
                            ),
                            Text('Postpaid')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/wif.png'),
                              iconSize: 31,
                            ),
                            Text('Broadband')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/land.png'),
                              iconSize: 31,
                            ),
                            Text('Land Line')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/edu.png'),
                              iconSize: 31,
                            ),
                            Text('Education')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 10,
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      top: 11,
                    )),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text('Donations',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(padding: EdgeInsets.only(right: 0)),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/donate.png'),
                              iconSize: 31,
                            ),
                            Text("Donate")
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/co.png'),
                              iconSize: 1,
                            ),
                            Text('Covid Cash Relif')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/food.png'),
                              iconSize: 41,
                            ),
                            Text('Covid Food'),
                            Text('Donate')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 150,
              width: 382,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 10,
                child: Column(
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(left: 222, top: 11, right: 22)),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text('Metro Recharge And Tickets',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/rect.png'),
                              iconSize: 41,
                            ),
                            Text('Delhi')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/rect.png'),
                              iconSize: 41,
                            ),
                            Text('Mumbai')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/rect.png'),
                              iconSize: 41,
                            ),
                            Text('Pune')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/rect.png'),
                              iconSize: 41,
                            ),
                            Text('Nagpur')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 150,
              width: 382,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 10,
                child: Column(
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(left: 222, top: 11, right: 22)),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text('Financial Service & Taxes',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/mon.png'),
                              iconSize: 31,
                            ),
                            Text('Credit Card')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/button.png'),
                              iconSize: 31,
                            ),
                            Text('Loan '),
                            Text('Repayment')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/manu.png'),
                              iconSize: 31,
                            ),
                            Text('Insurance')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/home.png'),
                              iconSize: 31,
                            ),
                            Text('Muncipa')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 150,
              width: 382,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 10,
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      top: 11,
                    )),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text('Insurance',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/car.png'),
                              iconSize: 31,
                            ),
                            Text('Bike '),
                            Text('Insurance')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/car.png'),
                              iconSize: 31,
                            ),
                            Text('Car'),
                            Text('Insurance')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/travel.png'),
                              iconSize: 31,
                            ),
                            Text('Travel '),
                            Text('Insurance')
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('image/hat.png'),
                              iconSize: 31,
                            ),
                            Text('1 Year'),
                            Text('Term')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
