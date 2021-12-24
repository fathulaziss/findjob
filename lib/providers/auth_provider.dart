import 'dart:convert';

import 'package:findjob/config/app_config.dart';
import 'package:findjob/framework/api_utils.dart';
import 'package:findjob/models/model_user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  Future<ModelUser?> register(
      {required String email,
      required String password,
      required String name,
      required String goal}) async {
    try {
      final payload = {
        "email": email,
        "password": password,
        "name": name,
        "goal": goal,
      };
      // var response = await Api().apiJSONPost('register', payload);
      var response = await http.post(Uri.parse(AppConfig.baseUrl + 'register'),
          body: payload);
      logSys(response.statusCode.toString());
      logSys(response.body);
      if (response.statusCode == 200) {
        return ModelUser.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      logSys('error : $e');
      rethrow;
    }
  }
}
