import 'package:flutter/material.dart';
import 'package:gateway/Service/user_service.dart';
import 'package:gateway/Models/venueModels/venue_response.dart';
import 'package:gateway/Models/UserModels/user_response_models.dart';
import 'package:gateway/UI/BottomSheets/entry_bottomsheet.dart';
import 'package:gateway/UI/Drawer/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as cnv;

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  late List<VenueResponseModel> model = [];
  late Future<UserResponseModel> getProfile;
  late bool timerActivated;

  @override
  void initState() {
    getData(http.Client());
    super.initState();
  }

  getData(http.Client client) async {
    final http.Response response =
        await client.get(Uri.parse('http://192.168.100.13:8000/venue/venues'));
    List<dynamic> body = cnv.jsonDecode(response.body);
    setState(() {
      model = body
          .map((dynamic item) => VenueResponseModel.fromJson(item))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      drawer: const SideMenu(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.sort,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10)),
            child: IconButton(
              icon: const Icon(
                Icons.notifications,
                size: 25.0,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsetsDirectional.only(top: 5),
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
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.green),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: const Text(
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
                                  const Color.fromARGB(255, 244, 208, 99)),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsetsDirectional.only(start: 15),
                          child: TextButton(
                            child: const Text(
                              'Offices',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: const EdgeInsetsDirectional.only(start: 15),
                          child: TextButton(
                            child: const Text(
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
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsetsDirectional.only(top: 12),
                  child: FutureBuilder<UserResponseModel>(
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          "Hello ${snapshot.data!.username}",
                          style: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        );
                      } else {
                        return const Text('');
                      }
                    },
                    future: Userservice().getProfile(),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsetsDirectional.only(top: 2, bottom: 3),
                  child: const Text(
                    "Were with you on every step",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 330,
                      height: 55,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 244, 208, 99),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0)),
                            hintText: 'Search Areas',
                            hintStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
              child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(28.0),
                topRight: Radius.circular(28.0)),
            child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) =>
                                  EntryBottomSheet(venue: model[index]));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: const Image(
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
                                    borderRadius: const BorderRadius.only(
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
                                margin: const EdgeInsets.only(top: 75),
                                child: SizedBox(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(
                                                  model[index].name,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ],
                                          )),
                                      Container(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: <Widget>[
                                              const Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              Container(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(
                                                  model[index].location,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                )),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: model.length,
                  ),
                ),
                color: Colors.white),
          ))
        ],
      )),
    );
  }
}
