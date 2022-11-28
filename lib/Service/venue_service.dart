// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:convert';
import 'package:gateway/Models/venueModels/venue_response.dart';
import 'package:gateway/Models/venueModels/single_venue_response.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as cnv;

class Venueservice {
  var client = http.Client();
  var token = FlutterSession().get('token');
  late SingleVenueResponseModel venue;

  Future<List<VenueResponseModel>> getVenues(http.Client client) async {
    final http.Response response =
        await client.get(Uri.parse('http://192.168.100.13:8000/venue/venues'));
    List<dynamic> body = cnv.jsonDecode(response.body);
    var model =
        body.map((dynamic item) => VenueResponseModel.fromJson(item)).toList();

    return model;
  }

  Future<SingleVenueResponseModel> getVenue(int id) async {
    var token = await FlutterSession().get("token");
    Map<String, String> requestHeaders = {'Authorization': 'Token $token'};
    var url = Uri.parse('http://192.168.100.13:8000/user/user_profile');

    var response = await http.get(
      url,
      headers: requestHeaders,
    );
    if (response.statusCode == 200) {
      venue = jsonDecode(response.body);
      print(venue);
      return SingleVenueResponseModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
