import 'dart:convert';

import 'package:findjob/config/app_config.dart';
import 'package:findjob/framework/api_utils.dart';
import 'package:findjob/models/model_category.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoryProvider with ChangeNotifier {
  Future<List<ModelCategory>> getJobCategories() async {
    try {
      // var response = await Api().apiJSONPost('register', payload);
      var response =
          await http.get(Uri.parse(AppConfig.baseUrl + 'categories'));
      logSys(response.statusCode.toString());
      logSys(response.body);
      if (response.statusCode == 200) {
        List<ModelCategory> categories = [];
        List parsedJson = jsonDecode(response.body);
        categories = List<ModelCategory>.from(
            parsedJson.map((e) => ModelCategory.fromJson(e)));
        // atau
        // parsedJson.forEach(
        //     (element) => categories.add(ModelCategory.fromJson(element)));
        return categories;
      } else {
        return [];
      }
    } catch (e) {
      logSys('error : $e');
      rethrow;
    }
  }
}
