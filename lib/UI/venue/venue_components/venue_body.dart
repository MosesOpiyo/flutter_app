// ignore_for_file: unused_local_variable, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, duplicate_ignore, use_key_in_widget_constructors

// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:gateway/UI/checkout/checkout.dart';

class VenueBody extends StatelessWidget {
  // ignore: unused_field

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Name of place',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.verified,
                            color: Colors.green,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 90),
                          child: IconButton(
                              icon: Icon(Icons.bookmark_border),
                              iconSize: 30,
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ],
                )),
            Row(children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 22),
                width: 30,
                padding: EdgeInsets.only(top: 2.5, left: 8.5),
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.blue),
                child: Text(
                  'P',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  '20 spots',
                  style: TextStyle(color: Colors.green),
                ),
              )
            ]),
            Container(
              padding: EdgeInsets.only(top: 10, left: 15),
              child: Row(
                children: <Widget>[
                  Container(
                      child: SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(178, 209, 255, 1)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: Color.fromRGBO(
                                            178, 209, 255, 1))))),
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.call,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Call',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          ),
                        )),
                  )),
                  Container(
                      padding: EdgeInsets.only(left: 15),
                      child: SizedBox(
                        width: 100,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color.fromRGBO(178, 209, 255, 1)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                            color: Color.fromRGBO(
                                                178, 209, 255, 1))))),
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.message_outlined,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Inbox',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 15),
                      child: SizedBox(
                        width: 100,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.blue)))),
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Share',
                                      style: TextStyle(),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 5),
              child: Text(
                'Info',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 18, right: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s,',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 5),
              child: Text(
                'Parking',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
                child: Positioned(
              bottom: 0,
              child: Container(
                margin: EdgeInsetsDirectional.only(top: 90),
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
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: Colors.amber)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Checkout()),
                      );
                    },
                    child: Text('Get In'),
                  ),
                ),
              ),
            ))
          ],
        ),
      ],
    );
  }
}
