import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/cashback.dart';
import 'package:flutter_nevig_1/screens/recharge.dart';
import 'package:flutter_nevig_1/screens/shopping.dart';
import 'package:flutter_nevig_1/screens/wallet.dart';

class Passbook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("INR PRO"),
            ),
            flexibleSpace: Container(
                decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFD81B60), Color(0xFF880E4F)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            )),
            bottom: TabBar(tabs: [
              Tab(
               child: Text('WALLET',style: TextStyle(fontSize: 11),),
              ),
              Tab(
              child:  Text ('RECHARGE',style: TextStyle(fontSize: 11),),
              ),
              Tab(
               child: Text ('SHOPPING',style: TextStyle(fontSize: 11),),
              ),
              Tab(
               child: Text('CASHBACK',style: TextStyle(fontSize: 11),),
              ),
            ]),
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
                        icon: Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                        iconSize: 31,
                        onPressed: () {}),
                        Text('STORE',style: TextStyle(fontSize: 8,color: Colors.white),)
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.home,color: Colors.white,
                        ),
                        iconSize: 31,
                        onPressed: () {}),
                          Text('HOME',style: TextStyle(fontSize: 8,color: Colors.white),)
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        icon: Icon(Icons.notifications,color: Colors.white,),
                        iconSize: 31,
                        onPressed: () {}),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text('NOTIFICATION',style: TextStyle(fontSize: 8,color: Colors.white),),
                          )
                  ],
                ),
              ],
            ),
          ),
        
          ),
          body: TabBarView(children: [
            Wallet(),
            Recharge(),
            Shopping(),
            Cashback(),
          ])),
    );
  }
}
