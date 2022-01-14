import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Market extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.home)],
        toolbarHeight: 60,
        backgroundColor: Colors.pink[800],
      ),
      body: Container(
        child: ListView(
          children: [
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.format_align_left,
                      color: Colors.pink[800],
                    ),iconSize: 30,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(40)),
                  child:  TextField(
                  cursorColor: Colors.pink[800],
                  controller: searchcontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(2),
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search,color: Colors.pink[800],),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                          borderSide: new BorderSide(color: Colors.black)
                          ),
                           focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.pink.shade800))
                          ),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.pink[800],
                  ),
                  iconSize: 35,
                ),
              )
            ],
          ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                margin: EdgeInsets.all(5),
                height: 700,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 10, right: 10),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Stores Near Me ',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'View All>>',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ))
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'image/sup.png',
                                  height: 180,
                                ),
                                Text('Super Market')
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'image/dmart.png',
                                  height: 180,
                                ),
                              ],
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'image/sup.png',
                                  height: 180,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'image/sup.png',
                                  height: 180,
                                ),
                                Text('dddgg')
                              ],
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'image/sup.png',
                                  height: 180,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'image/sup.png',
                                  height: 180,
                                ),
                                Text('fffffff')
                              ],
                            )
                          ]),
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
