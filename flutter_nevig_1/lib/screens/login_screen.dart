// ignore_for_file: must_be_immutable, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/sign_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import './sign_screen.dart';
import './inr_pro.dart';

// ignore: camel_case_types
class loginscreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordconformation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink[800]),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 25)),
              Text(
                'INR Expert',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Tag ilne',
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.all(22),
                child: TextField(
                  cursorColor: Colors.pink.shade800,
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: 'User ID',
                      labelStyle: TextStyle(color: Colors.pink.shade800),
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.pink.shade800,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade800))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22),
                child: TextField(
                  cursorColor: Colors.pink.shade800,
                  obscureText: true,
                  controller: passwordController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: ' Password',
                      labelStyle: TextStyle(color: Colors.pink.shade800),
                      prefixIcon: Icon(
                        Icons.password_rounded,
                        color: Colors.pink.shade800,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade800))),
                ),
              ),
              Container(
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => inrpro()));
                  },
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFD81B60), Color(0xFF880E4F)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 120.0, minHeight: 30.0),
                      alignment: Alignment.center,
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  child: Row(
                children: <Widget>[
                  Text(
                    'New User?',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    child: Text(
                      '   Sign up',
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal,
                          color: Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )),
              Container(
                padding: const EdgeInsets.all(21),
                child: SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                ),
              ),
              Image.asset(
                "image/rups.png",
                height: 170,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//api imp file code

/*import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_nevig_1/screens/sign_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import './sign_screen.dart';
import './inr_pro.dart';
import 'package:http/http.dart';

// ignore: camel_case_types
class loginscreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Url =
      "https://developer.satmatgroup.com/vehiclefinalproj/public/api/login";
  void loginUser(
    BuildContext context,
    String mobile,
    String otp,
  ) async {
    try {
      final response =
          await post(Uri.parse(Url), body: {"mobile": mobile, "otp": otp});
      //print(response.body);
      var data = json.decode(response.body);
      var status = data["status"] as bool;

      if (status == true) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Sucessfully Logged in")));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => inrpro()));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Invalid Mobile Number/Otp")));
      }
    } catch (er) {} // Checking all TextFields.
    if (nameController.text == '' || passwordController.text == '') {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Text Field is empty, Please Fill All Data")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid Mobile Number/Otp")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 25)),
              Text(
                'INR Expert',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Tag ilne',
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.all(22),
                child: TextField(
                  cursorColor: Colors.pink.shade800,
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'User ID',
                    labelStyle: TextStyle(color: Colors.pink[800]),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.pink[800],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pink.shade800,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22),
                child: TextField(
                  cursorColor: Colors.pink.shade800,
                  obscureText: true,
                  controller: passwordController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: ' Pasord',
                    labelStyle: TextStyle(color: Colors.pink[800]),
                    prefixIcon: Icon(
                      Icons.password_rounded,
                      color: Colors.pink[800],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pink.shade800,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //MaterialPageRoute(builder: (context) => inrpro()));
                    loginUser(
                      context,
                      nameController.text,
                      passwordController.text,
                    );
                  },
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFD81B60), Color(0xFF880E4F)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 120.0, minHeight: 30.0),
                      alignment: Alignment.center,
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  child: Row(
                children: <Widget>[
                  Text(
                    'New User?',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    child: Text(
                      '   Sign up',
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal,
                          color: Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )),
              Container(
                padding: const EdgeInsets.all(21),
                child: SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                ),
              ),
              Image.asset(
                "image/rups.png",
                height: 255,
                width: 377,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/