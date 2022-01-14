import 'package:flutter/material.dart';

class Cashbackdetails extends StatelessWidget {
  const Cashbackdetails({Key? key}) : super(key: key);

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
                Padding(padding: EdgeInsets.only(right: 14,top: 20)),
                new Text(
                  'Trasaction Details',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(top: 15)),
              
                   Container(margin: EdgeInsets.all(5),
                  height: 80,
                    width: 140,
                    child: Card(
                      elevation: 21,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
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
               
                  Container(margin: EdgeInsets.all(5),
                    height: 80,
                    width: 140,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
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
            
                 Container(margin: EdgeInsets.all(10),
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
                            children: [Padding(padding: EdgeInsets.only(top: 30,right: 10)),
                              Expanded(
                                child: Text('  Trasaction ID:436948',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
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
                              Padding(padding: EdgeInsets.only(top: 25,left: 10)),
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
                                  padding: EdgeInsets.only(top: 30, right: 10)),
                              Expanded(child: Text('Amount:')),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('₹1.00'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Padding(padding: EdgeInsets.only(top: 30,right: 10)),
                              Expanded(child: Text('Type:')), Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('Credit'),
                              )],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Padding(padding: EdgeInsets.only(top: 30,right: 10)),
                              Expanded(child: Text('Number:')), Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('54465565161'),
                              )],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Padding(padding: EdgeInsets.only(top: 30,right: 10)),
                              Expanded(child: Text('Operator:')), Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('TAYA Sky'),
                              )],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Padding(padding: EdgeInsets.only(top: 30,right: 10)),
                              Expanded(child: Text('Recharge Amount:')),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('₹100.00'),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Padding(padding: EdgeInsets.only(top: 30,right: 10)),
                              Expanded(child: Text('Date:')), Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text('16 Sept 2021'),
                              )],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Padding(padding: EdgeInsets.only(top: 30,right: 10)),
                              Expanded(
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
                        ])))
          ],
        ));
  }
}
