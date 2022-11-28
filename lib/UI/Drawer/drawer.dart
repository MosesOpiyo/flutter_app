import 'package:flutter/material.dart';
import 'package:gateway/Models/UserModels/user_response_models.dart';
import 'package:gateway/Service/user_service.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  late Future<UserResponseModel> getProfile;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                height: 210,
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: FutureBuilder<UserResponseModel>(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(
                        snapshot.data!.username,
                        style: const TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 73, 73, 73),
                            fontWeight: FontWeight.bold),
                      );
                    } else {
                      return const Text('No user');
                    }
                  },
                  future: Userservice().getProfile(),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(8),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Icon(
                            Icons.person_outline_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 73, 73, 73),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(8),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Favourites',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 73, 73, 73),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(8),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Icon(
                            Icons.share_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 73, 73, 73),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(8),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Icon(
                            Icons.settings_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 73, 73, 73),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(8),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Icon(
                            Icons.logout_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Log Out',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 73, 73, 73),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
