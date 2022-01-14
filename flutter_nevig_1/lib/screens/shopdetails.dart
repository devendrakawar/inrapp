import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shopdetails extends StatelessWidget {
  const Shopdetails({Key? key}) : super(key: key);

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
      body: ListView(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(right: 20, top: 30)),
              Text(
                'Order Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              margin: EdgeInsets.all(5),
              height: 190,
              width: 300,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 40, right: 10)),
                        Text('ORDER ID : VIPS080014653'),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(bottom: 15)),
                        Image.asset(
                          'image/www.png',
                          height: 50,
                        ),
                        Column(
                          children: [
                            Text('INR PRIME'),
                            SizedBox(
                              height: 9,
                            ),
                            Text('Amount:'),
                            SizedBox(
                              height: 9,
                              width: 80,
                            ),
                            Text('Qty:'),
                            SizedBox(
                              height: 9,
                            ),
                            Text('Date'),
                            SizedBox(
                              height: 9,
                            ),
                            Text('Return Upto')
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Text(' ₹356'),
                            SizedBox(
                              height: 11,
                            ),
                            Padding(padding: EdgeInsets.only(right: 170)),
                            Text(' 1 '),
                            SizedBox(
                              height: 9,
                            ),
                            Text('10 May 2021'),
                            SizedBox(
                              height: 9,
                            ),
                            Text('15 June 2021')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                'Adress Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.all(5),
              height: 180,
              width: 382,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 10,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Name:',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('Devendra Kawar'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Address:',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                                '301/302/, kondva bdk,Maharshtra,pune-411048'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 10, top: 30)),
                        Text('Mobile No:'),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text('7066604568'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 10, top: 30)),
                        Expanded(
                          child: Text('Type:'),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text('Credit'),
                        )),
                      ],
                    ),
                  ]))),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Order Summery Details',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
                margin: EdgeInsets.all(5),
                height: 140,
                width: 382,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 20,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(padding: EdgeInsets.only(right: 10, top: 30)),
                          Expanded(
                            child: Text(
                              'SUb Total:',
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 90),
                            child: Text('₹354.0'),
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 30, right: 10)),
                          Expanded(
                            child: Text(
                              'Shipping Charge:',
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Text('₹0.0'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(padding: EdgeInsets.only(right: 10, top: 30)),
                          Expanded(
                            child: Text('Prime Discount:'),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Text('₹0.0'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(padding: EdgeInsets.only(right: 10, top: 30)),
                          Expanded(
                            child: Text('Total:'),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 90),
                            child: Text('₹354'),
                          )),
                        ],
                      ),
                    ]))),
          ),
        ],
      ),
    );
  }
}
