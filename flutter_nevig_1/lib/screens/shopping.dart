import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/shopdetails.dart';

class Shopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(margin: EdgeInsets.all(5),
            height: 170,
            width: 300,
            child: Card(
              elevation: 21,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('BILL ID: 446689'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Shopdetails()));
                          },
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
                        icon: Image.asset('image/women.png'),
                        iconSize: 60,
                      ),
                      Column(
                        children: [
                          Text('Women Dress '),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Qty'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Total'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Date')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Text('1'),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text(' ₹2,233'),
                            SizedBox(
                              height: 9,
                            ),
                            Text('10/10/2021')
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
            height: 170,
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
                        child: Text('BILL ID : 446689'),
                      ),
                      TextButton(
                          onPressed: () {},
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
                        icon: Image.asset('image/women.png'),
                        iconSize: 60,
                      ),
                      Column(
                        children: [
                          Text('Women Dress'),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Qty'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Total'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Date')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Text('1'),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text(' ₹3,300 '),
                            SizedBox(
                              height: 9,
                            ),
                            Text('10/10/2021')
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
            height: 170,
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
                        child: Text('BILL ID : 446689'),
                      ),
                      TextButton(
                          onPressed: () {},
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
                        icon: Image.asset('image/women.png'),
                        iconSize: 60,
                      ),
                      Column(
                        children: [
                          Text('Women Dress'),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Qty'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Total'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Date')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Text('1'),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text(' ₹3,300 '),
                            SizedBox(
                              height: 9,
                            ),
                            Text('10/10/2021')
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
            height: 170,
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
                        child: Text('BILL ID : 446689'),
                      ),
                      TextButton(
                          onPressed: () {},
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
                        icon: Image.asset('image/women.png'),
                        iconSize: 60,
                      ),
                      Column(
                        children: [
                          Text('Women Dress'),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Qty'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Total'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Date')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Text('1'),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text(' ₹3,300 '),
                            SizedBox(
                              height: 9,
                            ),
                            Text('10/10/2021')
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
