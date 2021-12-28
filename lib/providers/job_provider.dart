import 'dart:convert';

import 'package:findjob/config/app_config.dart';
import 'package:findjob/framework/api_utils.dart';
import 'package:findjob/models/model_job.dart';
import 'package:findjob/shared/helpers/regex.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JobProvider with ChangeNotifier {
  Future<List<ModelJob>> getJobs({String? filterCategory}) async {
    var filter = '?category=${convertTitleCase(filterCategory ?? '')}';
    try {
      // var response = await Api().apiJSONPost('register', payload);
      var response = await http.get(Uri.parse(
          AppConfig.baseUrl + 'jobs' + (filterCategory != null ? filter : '')));
      logSys(response.statusCode.toString());
      logSys(response.body);
      if (response.statusCode == 200) {
        List<ModelJob> jobs = [];
        List parsedJson = jsonDecode(response.body);
        jobs = List<ModelJob>.from(parsedJson.map((e) => ModelJob.fromJson(e)));
        // atau
        // parsedJson.forEach(
        //     (element) => jobs.add(ModelJob.fromJson(element)));
        return jobs;
      } else {
        return [];
      }
    } catch (e) {
      logSys('error : $e');
      rethrow;
    }
  }
}
