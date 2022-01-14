import 'dart:convert';

import 'package:flutter/material.dart';

import 'UserReferalDetailsResponse.dart';
import 'NetworkServices.dart';

class information extends StatefulWidget {
  const information({Key? key}) : super(key: key);

  @override
  _userdateState createState() => _userdateState();
}

class _userdateState extends State<information> {
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
        title: Text('Userinformation'),
        backgroundColor: Colors.pink[800],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: user.result.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Container(
                  height: 350,
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
                                'ID:',
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 0, right: 150),
                              child: Text(
                                user.result[index].coinleeUserId ?? "",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
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
                              padding: const EdgeInsets.only(top: 10, left: 32),
                              child: Text(
                                user.result[index].userFirstName ?? "",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 60),
                              child: Text(
                                user.result[index].userLastName ?? "",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10, top: 30)),
                            Text('Mobile No:'),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 35),
                                child: Text(
                                  user.result[index].userMobile ?? "",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10, top: 30)),
                            Text('Email:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Text(
                                user.result[index].userEmail ?? "",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10, top: 30)),
                            Text('Time:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Text(
                                '',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10, top: 30)),
                            Text('Total:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Text(
                                user.result[index].totalCoinsPurchase
                                    .toString(),
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10, top: 30)),
                            Text('Coin:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Text(
                                user.result[index].totalCoinsReceivedByReferer
                                    .toString(),
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10, top: 10)),
                            Text('interest:'),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                user.result[index].intrestCoinsAgainstHolding
                                    .toString(),
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ]))),
            );
          },
        ),
      ),
    );
  }
}
