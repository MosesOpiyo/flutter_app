// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gateway/UI/components/homepage_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: Body());
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.sort,
          color: Colors.white,
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
              Icons.notifications,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
