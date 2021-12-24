import 'package:findjob/config/app_config.dart';
import 'package:findjob/framework/api_utils.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> apiJSONPost(String url, Map<String, dynamic> parameters,
      {Map<String, String>? headers}) async {
    try {
      logSys('url : ' + AppConfig.baseUrl + url);
      logSys('payload : ' + parameters.toString());
      var response =
          await http.post(Uri.parse(AppConfig.baseUrl + url), body: parameters);
      logSys('response : ' + response.toString());
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
