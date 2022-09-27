// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_import, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:gateway/Models/loginModels/login_response_models..dart';
import 'package:gateway/Service/user_service.dart';
import 'package:gateway/Service/venue_service.dart';
import 'package:gateway/UI/venue/venue.dart';
import 'package:gateway/authentication/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gateway/Models/venueModels/venue_response.dart';
import 'package:gateway/Models/UserModels/user_response_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as cnv;

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late List<VenueResponseModel> model = [];
  late Future<UserResponseModel> getProfile;
  var name = '';
  // ignore: unnecessary_cast
  @override
  void initState() {
    getData(http.Client());
    super.initState();
  }

  getData(http.Client client) async {
    final http.Response response =
        await client.get(Uri.parse('http://192.168.100.13:8000/venue/venues'));

    var responseData = cnv.json.decode(response.body);
    List<dynamic> body = cnv.jsonDecode(response.body);
    setState(() {
      model = body
          .map((dynamic item) => VenueResponseModel.fromJson(item))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Expanded(
          child: Column(
            children: <Widget>[
              Container(
                height: size.height * 0.3,
                color: Colors.amber,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsetsDirectional.only(start: 40, top: 10),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 70,
                              height: 40,
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.green),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsetsDirectional.only(start: 5),
                                      child: Text(
                                        'Malls',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 244, 208, 99)),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsetsDirectional.only(start: 15),
                              child: TextButton(
                                child: Text(
                                  'Offices',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              padding: EdgeInsetsDirectional.only(start: 15),
                              child: TextButton(
                                child: Text(
                                  'Functions',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.only(end: 170, top: 10),
                      child: FutureBuilder<UserResponseModel>(
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              "Hello ${snapshot.data!.username}",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            );
                          } else {
                            return Text('No user');
                          }
                        },
                        future: Userservice().getProfile(),
                      ),
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.only(end: 120, top: 5),
                      child: Text(
                        "Where to?",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.only(top: 5),
                      width: 330,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 244, 208, 99),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0)),
                            hintText: 'Search area you are going',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    height: 150,
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
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
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
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
                        Container(
                          margin: EdgeInsets.only(top: 90),
                          child: SizedBox(
                            child: Column(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsetsDirectional.only(
                                        end: 50, bottom: 3),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            model[index].name,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                      ],
                                    )),
                                Container(
                                    margin: EdgeInsets.only(top: 5, left: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_pin,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 2),
                                          child: Text(
                                            model[index].location,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: model.length,
              ),
            ],
          ),
        )
      ],
    );
  }
}
