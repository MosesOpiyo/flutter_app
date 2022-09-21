import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:gateway/Models/venueModels/venue_response.dart';
import 'package:gateway/Service/shared_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:gateway/UI/homepage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as cnv;

class Venueservice {
  var client = http.Client();
  var token = FlutterSession().get('token');

  Future<List<VenueResponseModel>> getVenues(http.Client client) async {
    Map<String, String> requestHeaders = {
      'Authorization': '$token',
    };

    final http.Response response =
        await client.get(Uri.parse('http://192.168.100.13:8000/venue/venues'));

    print(response.body);
    List<dynamic> body = cnv.jsonDecode(response.body);
    var model =
        body.map((dynamic item) => VenueResponseModel.fromJson(item)).toList();

    return model;
  }
}
