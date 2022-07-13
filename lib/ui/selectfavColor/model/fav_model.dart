// To parse this JSON data, do
//
//     final forgetPasswordResponse = forgetPasswordResponseFromMap(jsonString);

import 'dart:convert';

class ForgetPasswordResponse {
  ForgetPasswordResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  Data? data;

  factory ForgetPasswordResponse.fromJson(String str) => ForgetPasswordResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ForgetPasswordResponse.fromMap(Map<String, dynamic> json) => ForgetPasswordResponse(
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

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        dataObject: json["dataObject"],
      );

  Map<String, dynamic> toMap() => {
        "dataObject": dataObject,
      };
}
