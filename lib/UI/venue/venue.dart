// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gateway/Models/venueModels/single_venue_response.dart';
import 'package:gateway/Models/venueModels/venue_response.dart';
import 'package:gateway/UI/checkout/Checkout_2.dart';
import 'package:gateway/UI/checkout/checkout.dart';
import 'package:gateway/UI/homepage.dart';
import 'package:gateway/intro_pages/page_view.dart';

class Venue extends StatelessWidget {
  const Venue({Key? key, required this.venue}) : super(key: key);
  final VenueResponseModel venue;

  get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(270),
          // ignore: sized_box_for_whitespace
          child: Container(
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
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 18),
                      child: IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                            size: 30,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          }),
                    ),
                  ],
                ),
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
                                color: Color.fromARGB(255, 96, 175, 240),
                                size: 15,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  venue.location,
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
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 16, top: 12, bottom: 5),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.start, //change here don't //worked
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          venue.name,
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6),
                          child: Icon(
                            Icons.verified,
                            color: Colors.green,
                          ),
                        ),
                        new Spacer(),
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.bookmark_outline,
                            size: 25,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            Row(children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 17, bottom: 2),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue),
                  child: Center(
                    child: Text(
                      'P',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 7, bottom: 3),
                child: Text(
                  '${venue.parking} Spots Available',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
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
                                      style: TextStyle(color: Colors.white),
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
          ],
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
          ),
          child: InkWell(
            focusColor: Colors.black,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Checkout2(
                          name: venue.name,
                          location: venue.location,
                          // ignore: prefer_const_literals_to_create_immutables
                        )),
              );
            },
            child: const SizedBox(
              height: kToolbarHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Check Out',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
            ),
          ),
        ));
  }
}
