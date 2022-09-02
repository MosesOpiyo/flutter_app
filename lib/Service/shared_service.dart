// ignore_for_file: unused_local_variable, camel_case_types, non_constant_identifier_names, unused_import

import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:api_cache_manager/api_cache_manager.dart';
import 'package:api_cache_manager/models/cache_db_model.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:gateway/Models/loginModels/login_response_models..dart';
import 'package:gateway/authentication/login.dart';

class sharedService {
  static Future<bool> isLoggedIn() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist("login_details");

    return isKeyExist;
  }

  // ignore: body_might_complete_normally_nullable
  static Future<LoginResponseModel?> LoginDetails() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist("login_details");

    if (isKeyExist) {
      var cacheData = await APICacheManager().getCacheData("login_details");

      return loginResponseJson(cacheData.syncData);
    }
  }

  static Future<void> setLoginDetails(
    LoginResponseModel model,
  ) async {
    APICacheDBModel cacheDBModel = APICacheDBModel(
      key: "login_details",
      syncData: jsonEncode(model.toJson()),
    );
    await APICacheManager().addCacheData(cacheDBModel);
  }

  static Future<void> logout(BuildContext context) async {
    await APICacheManager().deleteCache("login_details");
  }
}
