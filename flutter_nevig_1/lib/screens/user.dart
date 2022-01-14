import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/UserReferalDetailsResponse.dart';
import 'package:flutter_nevig_1/screens/service.dart';
import 'package:http/http.dart' as http;
import 'UserReferalDetailsResponse.dart';
import 'NetworkServices.dart';

class userdata extends StatefulWidget {
  const userdata({Key? key}) : super(key: key);

  @override
  _userdateState createState() => _userdateState();
}

class _userdateState extends State<userdata> {
  UserReferalDetailsResponse user = new UserReferalDetailsResponse(result: [
    Result(
        coinleeUserId: "",
        userFirstName: "",
        userLastName: "",
        userMobile: "",
        userEmail: "",
        addedDatetime: DateTime.now(),
        totalCoinsPurchase: 0,
        totalCoinsReceivedByReferer: 0,
        intrestCoinsAgainstHolding: "")
  ]);
  bool loading = false;
  @override
  void initState() {
    super.initState();
    loading = true;
    NetworkServices.getUsers().then((users) {
      setState(() {
        user = users;
        loading = false;
        print(user.result.length);
      });
    });

    //api();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('userlist'),
        backgroundColor: Colors.pink[800],
      ),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.red,
          ),
          itemCount: null == user.result ? 0 : user.result.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => information()));
              },
              title: Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                  user.result[index].coinleeUserId??"",
                    style: TextStyle(color: Colors.black),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                    user.result[index].userLastName ?? "",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              leading: CircleAvatar(
                child: Text(
                  user.result[index].coinleeUserId ?? "",
                ),
                backgroundColor: Colors.pink,
              ),
            );
          },
        ),
      ),
    );
  }
}
