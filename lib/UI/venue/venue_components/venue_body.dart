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
              height: 300,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                      child: ClipRRect(
                    child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.pexels.com/photos/5672376/pexels-photo-5672376.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        )),
                  )),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.transparent
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 15,
                    child: Column(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsetsDirectional.only(top: 5, end: 55),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_pin,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Location',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, top: 20),
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
                      ],
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          // ignore: prefer_const_literals_to_create_immutables
                          TabBar(tabs: [
                            Tab(
                              text: 'Description',
                            ),
                            Tab(
                              text: 'Parking charges',
                            ),
                            Tab(
                              text: 'Description_002',
                            ),
                            TabBarView(children: [
                              Text('decription tab'),
                              Text('charges tab'),
                              Text('description_002 tab')
                            ])
                          ])
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
