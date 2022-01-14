import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
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
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 15)),
          Container(
            margin: EdgeInsets.all(10),
            width: 130,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      'image/right.png',
                    ),
                    fit: BoxFit.fitHeight),
                border: Border.all(color: Colors.black)),
          ),
          new Text(
            'Trasaction Sucessful',
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width: 140,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.pink[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Opening Balance',
                        textAlign: TextAlign.center,
                      ),
                      Text('5053.02')
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 80,
                width: 140,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.green[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Closing Balance',
                        textAlign: TextAlign.center,
                      ),
                      Text('54545.03')
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.all(10),
              height: 300,
              width: 382,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  elevation: 20,
                  child: Column(children: [
                    Padding(padding: EdgeInsets.only(top: 1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text('  Trasaction ID:436948',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('Credit'),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 25, left: 10)),
                        Text(
                          'Shopping Point Credit',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Amount:'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('₹1.00'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Text('Type:'),
                      ), Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('Credit'),
                      )],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Text('Number:'),
                        ), Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('54465565161'),
                        )],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Text('Operator:'),
                      ), Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('TAYA Sky'),
                      )],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Text('Recharge Amount:'),
                      ), Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('₹100.00'),
                      )],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Text('Date:'),
                      ), Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('16 Sept 2021'),
                      )],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Text(
                            'Time:',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('10:55:26'),
                        )
                      ],
                    )
                  ]))),
        ],
      ),
    );
  }
}
