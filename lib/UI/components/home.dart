import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:gateway/Models/loginModels/login_response_models..dart';
import 'package:gateway/Models/venueModels/single_venue_response.dart';
import 'package:gateway/Service/user_service.dart';
import 'package:gateway/Service/venue_service.dart';
import 'package:gateway/UI/venue/venue.dart';
import 'package:gateway/authentication/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gateway/Models/venueModels/venue_response.dart';
import 'package:gateway/Models/UserModels/user_response_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as cnv;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: Colors.amber,
            expandedHeight: 220,
            leading: IconButton(
              icon: const Icon(
                Icons.sort_outlined,
                size: 20.0,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                      child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Welcome User',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 5),
                    child: const Text(
                      'Were here every step of the way.',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                      height: 45,
                      child: Container(
                          padding: const EdgeInsets.only(top: 10),
                          alignment: Alignment.centerLeft,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    const Color.fromARGB(255, 244, 208, 99),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.transparent, width: 2.0),
                                    borderRadius: BorderRadius.circular(10.0)),
                                hintText: 'Search For Areas',
                                hintStyle: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                            keyboardType: TextInputType.text,
                          ))),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_active_outlined,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 100,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
