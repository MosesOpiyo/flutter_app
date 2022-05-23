// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: camel_case_types
class PhoneNumber_Auth extends StatelessWidget {
  const PhoneNumber_Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsetsDirectional.only(top: 180),
          child: Column(
            children: <Widget>[
              Text(
                'Your phone number',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 10),
                child: Text(
                  'Please enter your phone number',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF0E3311).withOpacity(0.5),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Your number'),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
