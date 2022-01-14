import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/cashbackdetails.dart';

class Cashback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
                        child: Text('TXT NO: 446689'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cashbackdetails()));
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
                        icon: Image.asset('image/bag.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 9,
                          ),
                          Text('Shopping Credit'),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Number'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Date'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Amount')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text('₹3.00'),
                            SizedBox(
                              height: 6,
                            ),
                            Text('7066604568'),
                            SizedBox(
                              height: 6,
                            ),
                            Text(' 10/10/2021'),
                            SizedBox(
                              height: 9,
                            ),
                            Text(' ₹100.00')
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
                        child: Text('TXT NO: 446689'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cashbackdetails()));
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
                        icon: Image.asset('image/refer.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 9,
                          ),
                          Text('Shopping Credit'),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Number'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Date'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Amount')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text('₹3.00'),
                            SizedBox(
                              height: 6,
                            ),
                            Text('7066604568'),
                            SizedBox(
                              height: 6,
                            ),
                            Text(' 10/10/2021'),
                            SizedBox(
                              height: 9,
                            ),
                            Text(' ₹100.00')
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
                        child: Text('TXT NO: 446689'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cashbackdetails()));
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
                        icon: Image.asset('image/dish.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 9,
                          ),
                          Text('Shopping Credit'),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Number'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Date'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Amount')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text('₹3.00'),
                            SizedBox(
                              height: 6,
                            ),
                            Text('7066604568'),
                            SizedBox(
                              height: 6,
                            ),
                            Text(' 10/10/2021'),
                            SizedBox(
                              height: 9,
                            ),
                            Text(' ₹100.00')
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
                        child: Text('TXT NO: 446689'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cashbackdetails()));
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
                        icon: Image.asset('image/dish.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 9,
                          ),
                          Text('Shopping Credit'),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Number'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Date'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Amount')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text('₹3.00'),
                            SizedBox(
                              height: 6,
                            ),
                            Text('7066604568'),
                            SizedBox(
                              height: 6,
                            ),
                            Text(' 10/10/2021'),
                            SizedBox(
                              height: 9,
                            ),
                            Text(' ₹100.00')
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
                        child: Text('TXT NO: 446689'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cashbackdetails()));
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
                        icon: Image.asset('image/dish.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 9,
                          ),
                          Text('Shopping Credit'),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Number'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Date'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Amount')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text('₹3.00'),
                            SizedBox(
                              height: 6,
                            ),
                            Text('7066604568'),
                            SizedBox(
                              height: 6,
                            ),
                            Text(' 10/10/2021'),
                            SizedBox(
                              height: 9,
                            ),
                            Text(' ₹100.00')
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
