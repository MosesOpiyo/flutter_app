// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable, unused_import, unused_local_variable, avoid_print, import_of_legacy_library_into_null_safe, avoid_web_libraries_in_flutter, invalid_return_type_for_catch_error

import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:gateway/Service/auth_service.dart';
import 'package:gateway/UI/components/home_3.dart';
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

  void _toggle() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            padding: EdgeInsetsDirectional.only(end: 70),
            child: Text(
              "Welcome Back.",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Dangrek',
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.only(end: 180, bottom: 20),
            child: Text(
              "Login to your account.",
              style: TextStyle(
                  color: Color(0xFF0E3311).withOpacity(0.5),
                  fontWeight: FontWeight.w500),
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
                          onPressed: _toggle,
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
                    obscureText: hidePassword,
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 215),
                    child: TextButton(
                      child: Text("Forgot Password"),
                      onPressed: () {},
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(top: 5),
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
                                        builder: (context) => Home3(
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
            padding: EdgeInsetsDirectional.only(top: 15, bottom: 5),
            child: Text(
              "Sign in with social media",
              style: TextStyle(
                color: Color(0xFF0E3311).withOpacity(0.5),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, bottom: 5),
            child: SizedBox(
              width: 500,
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/google.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/facebook.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/twitter.png',
                          fit: BoxFit.cover,
                        )),
                  )
                ],
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 80),
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
