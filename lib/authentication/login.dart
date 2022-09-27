// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable, unused_import, unused_local_variable, avoid_print, import_of_legacy_library_into_null_safe, avoid_web_libraries_in_flutter, invalid_return_type_for_catch_error

import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:gateway/Service/auth_service.dart';
import 'package:gateway/UI/homepage.dart';
import 'package:gateway/authentication/signup.dart';
import 'package:http/http.dart' as http;

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isAPIcallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          title: Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
          ),
        ),
        body: Center(
            child: Form(
              key: formKey,
              child: loginUI(context),
            ),
            key: UniqueKey()),
      ),
    );
  }

  Widget loginUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsetsDirectional.only(end: 138, top: 80),
            child: Text(
              "Welcome Back",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.only(end: 180, top: 10, bottom: 20),
            child: Text(
              "Login to your account.",
              style: TextStyle(
                color: Color(0xFF0E3311).withOpacity(0.5),
              ),
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
                        labelText: 'Email'),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Username is required";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.text,
                    controller: usernameController,
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            // ignore: unused_element
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          icon: Icon(hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                        )),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Password is required";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                  ),
                ),
              ],
            ),
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
                onPressed: () async {
                  String username = usernameController.text;
                  String password = passwordController.text;
                  isAPIcallProcess = true;
                  if (username != '' && password != '') {
                    APIService()
                        .login(username, password)
                        .then((response) async => {
                              if (response.token != "")
                                {
                                  await FlutterSession()
                                      .set('token', response.token),
                                  // ignore: unnecessary_brace_in_string_interps
                                  print(
                                      'the response data is ${response.token}'),
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage(
                                            // ignore: prefer_const_literals_to_create_immutables

                                            )),
                                  )
                                }
                              else
                                {print('There was an error.')}
                            })
                        .catchError((onError) {
                      print(onError);
                      return Future.error(onError);
                    });
                  }
                },
                child: Text('Login'),
              ),
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.only(top: 15),
            child: Text(
              "Or",
              style: TextStyle(
                color: Color(0xFF0E3311).withOpacity(0.5),
              ),
            ),
          ),
          Container(
              padding: EdgeInsetsDirectional.only(start: 95),
              child: Row(
                children: <Widget>[
                  Text(
                    "Dont have an account?",
                    style: TextStyle(
                      color: Color(0xFF0E3311).withOpacity(0.5),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
                      child: Text("Sign Up"))
                ],
              )),
        ],
      ),
    );
  }
}
