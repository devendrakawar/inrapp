import 'package:flutter/material.dart';

class Addmony extends StatelessWidget {
  TextEditingController addcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            new IconButton(
              onPressed: () {},
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
                        onPressed: () {}),
                    Text(
                      'STORE',
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        iconSize: 31,
                        onPressed: () {}),
                    Text(
                      'HOME',
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        iconSize: 31,
                        onPressed: () {}),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'NOTIFICATION',
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              '   Add Mony',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                margin: EdgeInsets.all(10),
                height: 250,
                width: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 21,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      SizedBox(
                        height: 50,
                        width: 320,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            controller: addcontroller,
                            cursorColor: Colors.pink.shade800,
                            decoration: InputDecoration(
                              labelText: 'Payment Amount',
                              labelStyle: TextStyle(
                                color: Colors.pink.shade800,
                              ),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.pink.shade800,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [Color(0xFFD81B60), Color(0xFF880E4F)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  '+100',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [Color(0xFFD81B60), Color(0xFF880E4F)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  '+200',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          Container(
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFD81B60),
                                    Color(0xFF880E4F)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    '+500',
                                    style: TextStyle(color: Colors.white),
                                  ))),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 120)),
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [Color(0xFFD81B60), Color(0xFF880E4F)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'ADD MONY',
                                  style: TextStyle(color: Colors.white),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
