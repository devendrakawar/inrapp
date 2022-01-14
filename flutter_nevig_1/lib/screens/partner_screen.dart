import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_nevig_1/screens/store_scree.dart';
import 'package:url_launcher/link.dart';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';

class partner extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();
  _launchURL() async {
    const url = 'https://www.amazon.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _flichURL() async {
    const url = 'https://www.flipkart.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
     CircularProgressIndicator();
    }
  }

  _manURL() async {
    const url = 'https://www.myntra.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  tataURL() async {
    const url = 'https://www.tatacliq.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ajioURL() async {
    const url = 'https://www.ajio.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  limURL() async {
    const url = 'https://www.limroad.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  jokURL() async {
    const url = 'https://www.joky.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  mxURL() async {
    const url = 'https://www.mxplayer.in';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
      body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              Padding(padding: EdgeInsets.only(top: 0)),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: TextField(
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
              Container(
                margin: EdgeInsets.all(5),
                height: 310,
                width: 382,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 10,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Text('  Fashion',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: _launchURL,
                                icon: Image.asset('image/amg.png'),
                                iconSize: 41,
                              ),
                              Text('Amazon')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: _flichURL,
                                icon: Image.asset('image/flip.png'),
                                iconSize: 51,
                              ),
                              Text('Fliplkart')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: _manURL,
                                icon: Image.asset('image/mantr.png'),
                                iconSize: 41,
                              ),
                              Text('Myntra')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: tataURL,
                                icon: Image.asset('image/tata.png'),
                                iconSize: 41,
                              ),
                              Text('TATA')
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: ajioURL,
                                icon: Image.asset('image/jio.png'),
                                iconSize: 51,
                              ),
                              Text('Ajio')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: limURL,
                                icon: Image.asset('image/road.png'),
                                iconSize: 41,
                              ),
                              Text('Limrec')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: jokURL,
                                icon: Image.asset('image/jock.png'),
                                iconSize: 41,
                              ),
                              Text('Jocky')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/pant.png'),
                                iconSize: 41,
                              ),
                              Text('Pantaloons')
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/puma.png'),
                                iconSize: 41,
                              ),
                              Text('Puma')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/clova.png'),
                                iconSize: 41,
                              ),
                              Text('Clovia')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/adidas.png'),
                                iconSize: 41,
                              ),
                              Text('Adidas')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/nike.png'),
                                iconSize: 41,
                              ),
                              Text('Nike')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(2),
                height: 210,
                width: 382,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 10,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 30)),
                          Text('  Entertainmet',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/zee.png'),
                                iconSize: 41,
                              ),
                              Text('Zee5')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/alt.png'),
                                iconSize: 41,
                              ),
                              Text('Alt Balaji')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/shemaro.png'),
                                iconSize: 41,
                              ),
                              Text('Shemaroo')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: mxURL,
                                icon: Image.asset('image/mx.png'),
                                iconSize: 51,
                              ),
                              Text('Mx Player')
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/disc.png'),
                                iconSize: 41,
                              ),
                              Text('Discovry')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/road.png'),
                                iconSize: 41,
                              ),
                              Text('Limrec')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/gm.png'),
                                iconSize: 45,
                              ),
                              Text('Games')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/densy.png'),
                                iconSize: 41,
                              ),
                              Text('Disney')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(2),
                height: 210,
                width: 382,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 10,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 30)),
                          Text('  Technology',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/dell.png'),
                                iconSize: 41,
                              ),
                              Text('Dell')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/lenvo.png'),
                                iconSize: 41,
                              ),
                              Text('Lenovo')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/micro.png'),
                                iconSize: 51,
                              ),
                              Text('Microsoft')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/oneplus.png'),
                                iconSize: 41,
                              ),
                              Text('One Plus')
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/samsung.png'),
                                iconSize: 41,
                              ),
                              Text('Samusng')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/tata.png'),
                                iconSize: 41,
                              ),
                              Text('TATA')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/apple.png'),
                                iconSize: 45,
                              ),
                              Text('Apple')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/ibm.png'),
                                iconSize: 41,
                              ),
                              Text('IBM')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(2),
                height: 230,
                width: 382,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 10,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 30)),
                          Text('  Food',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/dom.png'),
                                iconSize: 41,
                              ),
                              Text('Dominos')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/hut.png'),
                                iconSize: 41,
                              ),
                              Text('Pizzahut')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/pantry.png'),
                                iconSize: 41,
                              ),
                              Text('Amazon '),
                              Text('Pantry')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/donalds.png'),
                                iconSize: 41,
                              ),
                              Text('MC Donalds')
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/pop.png'),
                                iconSize: 41,
                              ),
                              Text('KFC')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/fresh.png'),
                                iconSize: 41,
                              ),
                              Text('Fresh'),
                              Text('Food')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/uber.png'),
                                iconSize: 45,
                              ),
                              Text('Uber '),
                              Text('Eats')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/zomato.png'),
                                iconSize: 41,
                              ),
                              Text('Zomato')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(2),
                height: 210,
                width: 382,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 10,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 30)),
                          Text('  Others',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/udmy.png'),
                                iconSize: 41,
                              ),
                              Text('Udmy')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/byju.png'),
                                iconSize: 41,
                              ),
                              Text('Byjus')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/fiv.png'),
                                iconSize: 51,
                              ),
                              Text('Fiverr')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/tuto.png'),
                                iconSize: 41,
                              ),
                              Text('Tutorial Point')
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/wonder.png'),
                                iconSize: 41,
                              ),
                              Text('Wonder')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/tata.png'),
                                iconSize: 41,
                              ),
                              Text('TATA')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/mantr.png'),
                                iconSize: 45,
                              ),
                              Text('Myntra')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset('image/ibm.png'),
                                iconSize: 41,
                              ),
                              Text('IBM')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
