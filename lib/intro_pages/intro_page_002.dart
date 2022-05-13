// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage002 extends StatelessWidget {
  const IntroPage002({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsetsDirectional.only(top: 130),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Image(
                width: 300,
                image: NetworkImage(
                    'https://thumbs.dreamstime.com/b/stopwatch-timer-fast-time-count-down-icon-vector-flat-cartoon-color-chronometer-sign-pictogram-isolated-clipart-158152500.jpg'),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 25),
                child: Text(
                  'Fast',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 10),
                child: Text(
                  'Fast transactions,fast services saving you time.',
                  style: TextStyle(
                      fontSize: 17, color: Color(0xFF0E3311).withOpacity(0.5)),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                margin: EdgeInsetsDirectional.only(top: 160),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amber, // background
                      onPrimary: Colors.white, // foreground
                      minimumSize: Size(350, 50)),
                  onPressed: () {},
                  child: Text('Get started'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
