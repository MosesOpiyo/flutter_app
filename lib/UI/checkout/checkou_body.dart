// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Checkout_body extends StatelessWidget {
  const Checkout_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.black),
          width: 10,
          height: 100,
          margin: EdgeInsets.all(20.0),
          child: Row(children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10, top: 15, right: 2),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 100),
                          child: Text(
                            "Time",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            "1hr 30mins",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              width: 2,
              height: 80,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 15),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 55),
                    child: Text(
                      "Amount",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Ksh 1000",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
