// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                        child: BackButton(
                      color: Colors.black,
                    )),
                    Container(
                      padding: EdgeInsetsDirectional.only(start: 125),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(end: 130, top: 80),
                child: Text(
                  "Welcome Back.",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding:
                    EdgeInsetsDirectional.only(end: 180, top: 10, bottom: 20),
                child: Text(
                  "Login to your account.",
                  style: TextStyle(
                    color: Color(0xFF0E3311).withOpacity(0.5),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    SizedBox(
                      width: 330,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            labelText: 'Email'),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    SizedBox(
                      width: 330,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            labelText: 'Password'),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 20),
                child: SizedBox(
                  width: 330,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(color: Colors.amber)))),
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 15),
                child: Text(
                  "Or",
                  style: TextStyle(
                    color: Color(0xFF0E3311).withOpacity(0.5),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsetsDirectional.only(start: 95),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Dont have an account?",
                        style: TextStyle(
                          color: Color(0xFF0E3311).withOpacity(0.5),
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text("Sign Up"))
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
