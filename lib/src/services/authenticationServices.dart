import 'package:angkor/src/model/loginModel.dart';
import 'package:angkor/src/services/urlSchemes.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AuthenticationServices {
  Future<LoginModel> login(String email, String password, String type) async {
    String url = UrlSchemes.baseUrlDev + UrlSchemes.login;

    var data = {"email": email, "password": password, "type": type};

    /// Request
    var response = await http.post(Uri.parse(url), body: data);

    if (kDebugMode) {
      print("Called API: $url");
      // print("data" + data);
      print("Status Code: ${response.statusCode}");
      // print("Response Body: ${utf8.decode(response.bodyBytes)}");
    }
    if (response.statusCode == 200) {
      return loginModelFromJson(response.body);
    }
    if (response.statusCode == 400) {
      throw Exception("No Admit Patient Found");
    }
    if (response.statusCode == 401) {
      throw Exception('UnAuthorized');
    }
    if (response.statusCode == 404) {
      throw Exception('No User Record Found!');
    }
    if (response.statusCode == 500) {
      throw Exception('Server Not Responding');
    } else {
      throw Exception('Something Went Wrong');
    }
  }
}
