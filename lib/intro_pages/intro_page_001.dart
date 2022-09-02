// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gateway/intro_pages/intro_page_002.dart';

class IntroPage001 extends StatelessWidget {
  const IntroPage001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsetsDirectional.only(top: 170),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Image(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH5qnWunGXJeCjkSSrWS8-iH-9fLEDuhEW0A&usqp=CAU'),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 25),
                child: Text(
                  'GateWay',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 10, start: 5, end: 5),
                child: Text(
                  'Clearing your way of obstacles.Its free and fast',
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
                      minimumSize: Size(320, 50)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IntroPage002()),
                    );
                  },
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
