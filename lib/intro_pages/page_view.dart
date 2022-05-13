// ignore: unused_import
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gateway/intro_pages/intro_page_001.dart';

final controller = PageController(
  initialPage: 1,
);

final pageView = PageView(
  controller: controller,
  scrollDirection: Axis.horizontal,
  // ignore: prefer_const_literals_to_create_immutables
  children: [
    IntroPage001(),
  ],
);
