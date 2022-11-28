import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  Checkout({
    Key? key,
  }) : super(key: key);

  late String name;
  late String location;
  TextEditingController amountController = TextEditingController();
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
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
                      "Now checking out of Venue",
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
                                      'Name',
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
                                      'location',
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
                                    color:
                                        Colors.transparent, //shadow for button
                                    blurRadius: 5) //blur radius of shadow
                              ]),
                          child: Padding(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              child: DropdownButton(
                                value: "menuone",
                                items: [
                                  DropdownMenuItem(
                                    child: Text("Methods"),
                                    value: "menuone",
                                  )
                                ],
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
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    labelText: 'Amount'),
                keyboardType: TextInputType.number,
                controller: amountController,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
