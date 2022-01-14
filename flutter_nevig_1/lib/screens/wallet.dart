

import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/details.dart';
import 'package:flutter_nevig_1/screens/details2.dart';
import './details.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(margin: EdgeInsets.all(5),
            height: 177,
          
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(right: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('ORDER ID: 446689'),
                      ),
                      TextButton(
                          onPressed: () { Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Details()));},
                          child: Column(
                            children: [
                              Text(
                                'View Details>>',
                                style: TextStyle(color: Colors.pink[800],fontWeight: FontWeight.bold),
                              ),
                            ],
                          ))
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(bottom: 15)),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('image/add.png'),
                          iconSize: 41,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 9,
                            ),
                            Text('Add Mony TO Wallet'),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Recharge'),
                            SizedBox(
                              height: 9,
                              width: 80,
                            ),
                            Text('Date'),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                top: 25,
                              )),
                              SizedBox(
                                height: 11,
                              ),
                              Padding(padding: EdgeInsets.only(right: 161)),
                              Text(
                                '  ₹300',
                                style: TextStyle(color: Colors.green),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(' 11/8/2021')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(margin: EdgeInsets.all(5),
            height: 177,
            width: 300,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('ORDER ID: 446689'),
                      ),
                      TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mob()));},
                          child: Column(
                            children: [
                              Text(
                                'View Details>>',
                                style: TextStyle(color: Colors.pink[800],fontWeight: FontWeight.bold),
                              ),
                            ],
                          ))
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 15)),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('image/mob.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 9,
                          ),
                          Text('Add Mony TO Wallet'),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Recharge'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Date'),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                              top: 25,
                            )),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 161)),
                            Text(
                              '  ₹300',
                              style: TextStyle(color: Colors.red),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(' 11/8/2021')
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(margin: EdgeInsets.all(5),
            height: 177,
            width: 300,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('ORDER ID: 446689'),
                      ),
                      TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mob()));},
                          child: Column(
                            children: [
                              Text(
                                'View Details>>',
                                style: TextStyle(color: Colors.pink[800],fontWeight: FontWeight.bold)
                              ),
                            ],
                          ))
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 15)),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('image/dish.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 9,
                          ),
                          Text('Add Mony TO Wallet'),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Recharge'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Date'),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                              top: 25,
                            )),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 161)),
                            Text(
                              '  ₹300',
                              style: TextStyle(color: Colors.red),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(' 11/8/2021')
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(margin: EdgeInsets.all(5),
          height: 177,
            width: 300,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
               
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('ORDER ID: 446689'),
                        ),
                      ),
                      TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mob()));},
                          child: Column(
                            children: [
                              Text(
                                'View Details>>',
                                style: TextStyle(color: Colors.pink[800],fontWeight: FontWeight.bold),
                              ),
                            ],
                          ))
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 15)),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('image/mob.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 9,
                          ),
                          Text('Add Mony TO Wallet'),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Recharge'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Date'),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                              top: 25,
                            )),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 161)),
                            Text(
                              '  ₹300',
                              style: TextStyle(color: Colors.green),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(' 11/8/2021')
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
