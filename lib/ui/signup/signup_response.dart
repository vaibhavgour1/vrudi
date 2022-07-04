

import 'dart:convert';

SignUpResponse signUpResponseFromMap(String str) =>
    SignUpResponse.fromMap(json.decode(str));

String signUpResponseToMap(SignUpResponse data) => json.encode(data.toMap());

class SignUpResponse {
  SignUpResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  Data? data;

  factory SignUpResponse.fromMap(Map<String, dynamic> json) => SignUpResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data!.toMap(),
      };
}

class Data {
  Data({
    this.dataObject,
  });

  dynamic dataObject;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        dataObject: json["dataObject"],
      );

  Map<String, dynamic> toMap() => {
        "dataObject": dataObject,
      };
}
