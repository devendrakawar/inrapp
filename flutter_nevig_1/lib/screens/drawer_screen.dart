import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/login_screen.dart';
import './store_scree.dart';

// ignore: camel_case_types
class drawerscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.pink[800],
          leading: new IconButton(
            icon: new Icon(Icons.close, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: [
                    Image.network(
                      'https://media.istockphoto.com/vectors/code-illustration-vector-id828088276?k=20&m=828088276&s=612x612&w=0&h=JnX2DFXVGyTe-wDXdXhTG9p7yPmbd-jO3qWRfCQnHgE=',
                      height: 125,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.pink[800],
                ),
                title: Text('Account', style: TextStyle(fontSize: 15)),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset(
                  "image/group.png",
                  height: 25,
                  
                ),
                title: Text('Affiliate ', style: TextStyle(fontSize: 15)),
                onTap: () {},
              ),
              ListTile(
                leading:
                    Image.asset("image/pay.png", height: 25, ),
                title: Text('All Payments', style: TextStyle(fontSize: 15)),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset(
                  "image/hist.png",
                  height: 25,
                
                ),
                title: Text('History ', style: TextStyle(fontSize: 15)),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset(
                  "image/call.png",
                  height: 25,
                 
                ),
                title: Text('Call us ', style: TextStyle(fontSize: 15)),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset(
                  "image/chat.png",
                  height: 25,
                
                ),
                title: Text('Chat With Us ', style: TextStyle(fontSize: 15)),
                onTap: () {},
              ),
            ],
          ),
        ),
        floatingActionButton: TextButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginscreen()));
            },
            icon: Icon(Icons.logout,color: Colors.pink[800],),
            label: Text(
              'Logout',style: TextStyle(color: Colors.black),
            )));
  }
}
