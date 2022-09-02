// ignore: unused_import
// ignore_for_file: unused_import, duplicate_ignore, avoid_print, import_of_legacy_library_into_null_safe, unused_local_variable

import 'dart:convert';

import 'package:gateway/Models/loginModels/login_response_models..dart';
import 'package:gateway/Models/registrationModels/registration_response_models.dart';
import 'package:gateway/Service/shared_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:gateway/UI/homepage.dart';
import 'package:http/http.dart' as http;

class APIService {
  var client = http.Client();

  Future<LoginResponseModel> login(String username, String password) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };
    var url = Uri.parse('http://127.0.0.1:8000/authentication/login');
    var response = await http.post(
      url,
      headers: requestHeaders,
      body: jsonEncode({"username": username, "password": password}),
    );
    return loginResponseJson(response.body);
  }

  Future<RegistrationResponseModel> registration(
      String username, String email, String password) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };
    var url = Uri.parse('http://127.0.0.1:8000/authentication/registration');

    var response = await http.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(
          {"username": username, "password": password, "email": email}),
    );
    print(response.body);
    return registrationResponseModel(response.body);
  }
}
