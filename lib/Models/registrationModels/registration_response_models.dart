import 'dart:convert';

RegistrationResponseModel registrationResponseModel(String str) =>
    RegistrationResponseModel.fromJson(json.decode(str));

class RegistrationResponseModel {
  RegistrationResponseModel({
    required this.username,
    required this.email,
    required this.password,
  });
  late final String username;
  late final String email;
  late final String password;

  RegistrationResponseModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['username'] = username;
    _data['email'] = email;
    _data['password'] = password;
    return _data;
  }
}
