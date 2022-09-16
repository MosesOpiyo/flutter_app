import 'package:gateway/Models/UserModels/user_response_models.dart';
import 'package:gateway/Service/shared_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:gateway/UI/homepage.dart';
import 'package:http/http.dart' as http;

class Userservice {
  var client = http.Client();
  var token = FlutterSession().get('token');

  Future<UserResponseModel> profile() async {
    Map<String, String> requestHeaders = {
      'Authorization': '$token',
    };
    var url = Uri.parse('http://192.168.100.13:8000/user/user_profile');
    var response = await http.get(
      url,
      headers: requestHeaders,
    );
    return UserResponseJson(response.body);
  }
}
