// ignore_for_file: unused_local_variable, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

class VenueBody extends StatelessWidget {
  const VenueBody({Key? key}) : super(key: key);

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
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Details',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            Center(
                child: Positioned(
              bottom: 0,
              child: Container(
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
