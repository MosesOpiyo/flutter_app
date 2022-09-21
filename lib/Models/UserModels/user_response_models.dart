// ignore_for_file: file_names, unnecessary_new, prefer_collection_literals, unnecessary_this, avoid_print
import 'dart:convert';

// ignore: non_constant_identifier_names
UserResponseModel UserResponseJson(String str) =>
    UserResponseModel.fromJson(json.decode(str));

class UserResponseModel {
  String? user;

  UserResponseModel({this.user});

  UserResponseModel.fromJson(Map<String, dynamic> json) {
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    return data;
  }
}
