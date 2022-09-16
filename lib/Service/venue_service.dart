import 'package:gateway/Models/venueModels/venue_response.dart';
import 'package:gateway/Service/shared_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:gateway/UI/homepage.dart';
import 'package:http/http.dart' as http;

class Venueservice {
  var client = http.Client();
  var token = FlutterSession().get('token');

  Future<List<Venue>?> getVenues() async {
    Map<String, String> requestHeaders = {
      'Authorization': '$token',
    };
    var url = Uri.parse('http://192.168.100.13:8000/venue/venues');
    var response = await http.get(
      url,
      headers: requestHeaders,
    );
    if (response.statusCode == 200) {
      var json = response.body;
      return venueFromJson(json);
    }
  }
}
