// ignore_for_file: prefer_const_constructors, unused_import, avoid_unnecessary_containers, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, avoid_print, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:gateway/Service/auth_service.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:gateway/authentication/login.dart';
import 'package:gateway/authentication/phone_number_auth.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

bool isAPIcallProcess = false;
bool hidePassword = true;
GlobalKey<FormState> formKey = GlobalKey<FormState>();
String username = '';
String email = '';
String password = '';
String password2 = '';
TextEditingController usernameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController passwordController2 = TextEditingController();

class _SignupPageState extends State<SignupPage> {
  void _toggle() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: true,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            title: Container(
              width: 145,
              height: 60,
              child: Image.asset('assets/logo1.png', fit: BoxFit.cover),
            )),
        body: signupUI(context));
  }

  Widget signupUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsetsDirectional.only(end: 130, top: 20),
            child: Text(
              "Create your",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Dangrek',
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.only(end: 200, start: 10),
            child: Text(
              "Account",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Dangrek',
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.only(end: 180, bottom: 10),
            child: Text(
              "Lets get you signed up.",
              style: TextStyle(
                color: Color(0xFF0E3311).withOpacity(0.5),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                SizedBox(
                  width: 330,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        labelText: 'Email'),
                    keyboardType: TextInputType.text,
                    controller: usernameController,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                SizedBox(
                  width: 330,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        labelText: 'Username'),
                    keyboardType: TextInputType.text,
                    controller: emailController,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                SizedBox(
                  width: 330,
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: _toggle,
                          icon: Icon(hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        labelText: 'Password'),
                    obscureText: hidePassword,
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  "Agree to our",
                  style: TextStyle(
                    color: Color(0xFF0E3311).withOpacity(0.5),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 3),
                child: Text(
                  "terms & conditions.",
                  style: TextStyle(
                    color: Color(0xFF0E3311).withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsetsDirectional.only(top: 20),
            child: SizedBox(
              width: 330,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.amber),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.amber)))),
                onPressed: () {
                  String username = emailController.text;
                  String email = usernameController.text;
                  String password = passwordController.text;
                  isAPIcallProcess = true;
                  if (username != '' && password != '') {
                    APIService()
                        .registration(username, email, password)
                        .then((response) async => {
                              if (response.username != "" &&
                                  response.email != "" &&
                                  response.password != "")
                                {
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()),
                                    )
                                  }
                                }
                              else
                                {print('There was an error.')}
                            })
                        .catchError((onError, StackTrace) {
                      print("Error is: $onError");
                    });
                  }
                },
                child: Text('Get started'),
              ),
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.only(top: 15, bottom: 5),
            child: Text(
              "Or",
              style: TextStyle(
                color: Color(0xFF0E3311).withOpacity(0.5),
              ),
            ),
          ),
          Container(
              padding: EdgeInsetsDirectional.only(start: 110),
              child: Row(
                children: <Widget>[
                  Text(
                    "Have an account?",
                    style: TextStyle(
                      color: Color(0xFF0E3311).withOpacity(0.5),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text("Sign in"))
                ],
              )),
        ],
      ),
    );
  }
}
