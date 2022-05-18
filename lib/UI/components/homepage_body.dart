// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: size.height * 0.32,
              color: Colors.amber,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsetsDirectional.only(start: 40, top: 10),
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
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.green),
                                ),
                                Container(
                                  padding: EdgeInsetsDirectional.only(start: 5),
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
                  Container(
                    padding: EdgeInsetsDirectional.only(end: 170, top: 15),
                    child: Text(
                      "Hello user,",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
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
                    padding: EdgeInsetsDirectional.only(top: 10),
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 244, 208, 99),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
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
            )
          ],
        ),
      ],
    );
  }
}
