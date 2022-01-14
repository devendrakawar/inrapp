import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Column(
                        children: [
                          TextField(  cursorColor: Colors.pink.shade800,
                            decoration: InputDecoration(prefixIcon: Icon(Icons.account_circle,color:Colors.pink[800],),
                                labelText: "First Name",
                                  labelStyle: TextStyle(color: Colors.pink.shade800),
                                border: OutlineInputBorder(), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade800)))
                                
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      TextField(  cursorColor: Colors.pink.shade800,
                        decoration: InputDecoration(prefixIcon: Icon(Icons.account_circle,color: Colors.pink[800],),
                            labelText: "Last Name",
                              labelStyle: TextStyle(color: Colors.pink.shade800),
                            border: OutlineInputBorder(), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade800))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(  cursorColor: Colors.pink.shade800,
                        decoration: InputDecoration(prefixIcon: Icon(Icons.mail,color: Colors.pink[800],),
                            labelText: "Email",
                              labelStyle: TextStyle(color: Colors.pink.shade800),
                             border: OutlineInputBorder(), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade800))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(  cursorColor: Colors.pink.shade800,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mobile_friendly,color: Colors.pink[800],),
                            labelText: "Mobile Number",
                              labelStyle: TextStyle(color: Colors.pink.shade800),
                            border: OutlineInputBorder(), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade800))),
                            
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: <Widget>[
                          TextField(  cursorColor: Colors.pink.shade800,
                            decoration: InputDecoration(prefixIcon:Icon(Icons.manage_accounts,color: Colors.pink[800],),
                            
                                labelText: "Sponser ID",
                                  labelStyle: TextStyle(color: Colors.pink.shade800),
                                border: OutlineInputBorder(), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade800))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock,color: Colors.pink[800],),
                                labelText: "Password",
                                  labelStyle: TextStyle(color: Colors.pink.shade800),
                                border: OutlineInputBorder(), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade800)),
                                suffixIcon: IconButton(
                                  icon: Icon(_obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,color: Colors.pink[800],),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                )),
                          ),
                          SizedBox(
                            height: 10,
                            width: 200,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Checkbox(
                                    value: _isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        _isChecked = !_isChecked;
                                      });
                                    },
                                  ),
                                  Text("By clicking signup you agree to terms")
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 50)),
                              Text('and condtion')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                onPressed: () {
                                  // Navigator.push(context,
                                  // MaterialPageRoute(builder: (context) => inrpro()));
                                },
                                padding: EdgeInsets.all(0.0),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFD81B60),
                                          Color(0xFF880E4F)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: Container(
                                    constraints: BoxConstraints(
                                        maxWidth: 120.0, minHeight: 30.0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "SignUp",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset(
                              'image/bai.png',
                              height: 100,
                              width: 300,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
