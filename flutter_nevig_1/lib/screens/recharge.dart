

import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/resuccess.dart';


class Recharge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: ListView(
        children: [
       
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
                        child: Text('ORDER ID : 446689'),
                      ),
                      TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Resucess()));},
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
                        icon: Image.asset('image/vi.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          Text(' Recharge Of VI'),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Recharge No'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Recharge'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Date')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [SizedBox(height: 18,),
                            Text('7066604568'),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text(' ₹300 '),
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
                        child: Text('ORDER ID : 446689'),
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
                        icon: Image.asset('image/sky.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          Text('TATA Sky Recharge'),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Recharge No'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Recharge'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Date')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [SizedBox(height: 18,),
                            Text('7066604568'),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text(' ₹300 '),
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
                  Padding(padding: EdgeInsets.only(right: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('ORDER ID : 446689'),
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
                        icon: Image.asset('image/air.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          Text('Airtel  Recharge'),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Recharge No'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Recharge'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Date')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [SizedBox(height: 18,),
                            Text('7066604568'),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text(' ₹300 '),
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
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('ORDER ID : 446689'),
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
                        icon: Image.asset('image/dish.png'),
                        iconSize: 41,
                      ),
                      Column(
                        children: [
                          Text('Dish TV Recharge'),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Recharge No'),
                          SizedBox(
                            height: 9,
                            width: 80,
                          ),
                          Text('Recharge'),
                          SizedBox(
                            height: 9,
                          ),
                          Text('Date')
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [SizedBox(height: 18,),
                            Text('7066604568'),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text(' ₹300 '),
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
