import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExtendedAppBar extends StatelessWidget {
  const ExtendedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      backgroundColor: Colors.amber,
      expandedHeight: 240,
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
                height: 50,
                child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 244, 208, 99),
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
    );
  }
}
