import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          "Payment",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontFamily: 'Dangrek',
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
              height: 200,
              color: Colors.amber,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 50),
                      child: const Text(
                        "Total amount for time in venue",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: const Text(
                        "Ksh 100",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 35),
                      ),
                    )
                  ],
                ),
              )),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15, top: 70, bottom: 15),
            child: const Text(
              'Enter PIN to confirm payment.',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            width: 320,
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: 'PIN'),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "Username is required";
                } else {
                  return null;
                }
              },
              obscureText: true,
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 19),
            child: Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Text(
                    'Having Problems?',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Speak with Management."),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: SizedBox(
          width: 310,
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.amber)))),
            onPressed: () async {},
            child: const Text('Confirm'),
          ),
        ),
      ),
    );
  }
}
