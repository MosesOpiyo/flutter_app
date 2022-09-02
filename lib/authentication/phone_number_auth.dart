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
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: SizedBox(
                      width: 70,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            labelText: 'Code'),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: SizedBox(
                      width: 230,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            labelText: 'Your number'),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
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
                    child: Text('Confirm'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
