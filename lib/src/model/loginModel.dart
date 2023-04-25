// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.response,
  });

  Response response;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    response: Response.fromJson(json["response"]),
  );

  Map<String, dynamic> toJson() => {
    "response": response.toJson(),
  };
}

class Response {
  Response({
    required this.status,
    required this.message,
    required this.id,
  });

  String status;
  String message;
  String id;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
    status: json["status"],
    message: json["message"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "id": id,
  };
}
