import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(
        Icons.sort,
        color: Colors.white,
      ),
      onPressed: () {},
    ),
    actions: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10)),
        child: IconButton(
          icon: const Icon(
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
