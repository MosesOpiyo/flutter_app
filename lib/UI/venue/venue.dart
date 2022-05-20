// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gateway/UI/venue/venue_components/venue_body.dart';
import 'package:gateway/intro_pages/page_view.dart';

class Venue extends StatelessWidget {
  const Venue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildVenueAppBar(),
      body: VenueBody(),
    );
  }

  AppBar buildVenueAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.chevron_left,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {},
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(10),
          decoration:
              BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10)),
          child: IconButton(
            icon: Icon(
              Icons.more_vert,
              size: 25.0,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
