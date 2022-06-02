// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gateway/UI/venue/venue_components/venue_body.dart';
import 'package:gateway/intro_pages/page_view.dart';

class Venue extends StatelessWidget {
  const Venue({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(top: 25),
                    child: IconButton(
                        icon: Icon(
                          Icons.chevron_left,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
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
      ),
      body: VenueBody(),
    );
  }
}
