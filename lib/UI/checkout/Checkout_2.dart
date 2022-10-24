import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gateway/Models/venueModels/single_venue_response.dart';
import 'package:gateway/Models/venueModels/venue_response.dart';
import 'package:gateway/Service/venue_service.dart';
import 'package:gateway/UI/homepage.dart';
import 'package:gateway/UI/venue/venue.dart';
import 'package:http/http.dart';

class Checkout2 extends StatefulWidget {
  Checkout2({Key? key, required this.name, required this.location})
      : super(key: key);

  final String name;
  final String location;
  String valueData() {
    // ignore: void_checks
    print(name);
    return name;
  }

  @override
  State<Checkout2> createState() => _Checkout2State();
}

class _Checkout2State extends State<Checkout2> {
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var currentValue;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(180),
          // ignore: sized_box_for_whitespace
          child: Container(
              height: 300,
              color: Colors.amber,
              child: Container(
                padding: EdgeInsets.only(top: 70, left: 20),
                child: Stack(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 33,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 35),
                      child: Text(
                        "Now checking out of ${widget.name}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Venue',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
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
                      margin: EdgeInsets.only(top: 80),
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
                                        widget.name,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
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
                                      color: Colors.blue,
                                      size: 15,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 2),
                                      child: Text(
                                        widget.location,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 35, left: 22),
                  child: Text(
                    "Payment Method",
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 35, left: 18),
                    child: SizedBox(
                        width: 190,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(255, 238, 238, 238),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors
                                          .transparent, //shadow for button
                                      blurRadius: 5) //blur radius of shadow
                                ]),
                            child: Padding(
                                padding: EdgeInsets.only(left: 30, right: 30),
                                child: DropdownButton(
                                  value: currentValue,
                                  items: <String>['Mpesa', 'Debit', 'Credit']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (value) {},
                                  isExpanded:
                                      true, //make true to take width of parent widget
                                  underline: Container(), //empty line
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                  dropdownColor: Colors.white,
                                  iconEnabledColor: Colors.black, //Icon color
                                )))))
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 18),
              child: SizedBox(
                width: 320,
                child: TextFormField(
                  enabled: false,
                  initialValue: "${widget.name}",
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Amount'),
                  keyboardType: TextInputType.number,
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          width: 320,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
          ),
          child: InkWell(
            focusColor: Colors.black,
            onTap: () {},
            child: const SizedBox(
              height: kToolbarHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Verify Payment',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
            ),
          ),
        ));
  }
}
