// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:gateway/UI/checkout/checkout.dart';
// ignore: unused_import
import 'package:gateway/UI/homepage.dart';
// ignore: unused_import
import 'package:gateway/UI/venue/venue.dart';
// ignore: unused_import
import 'package:gateway/authentication/signup.dart';
// ignore: unused_import
import 'package:gateway/authentication/login.dart';
// ignore: unused_import
import 'package:gateway/intro_pages/intro_page_001.dart';
// ignore: unused_import
import 'package:gateway/intro_pages/intro_page_002.dart';
// ignore: unused_import
import 'package:gateway/authentication/phone_number_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GateWay',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
      ),
      home: IntroPage001(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => SignupPage(),
      },
    );
  }
}
