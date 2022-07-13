// To parse this JSON data, do
//
//     final employeeRegisterResponse = employeeRegisterResponseFromMap(jsonString);

import 'dart:convert';

class EmployeeRegisterResponse {
  EmployeeRegisterResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  EmployeeRegisterData? data;

  factory EmployeeRegisterResponse.fromJson(String str) => EmployeeRegisterResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EmployeeRegisterResponse.fromMap(Map<String, dynamic> json) => EmployeeRegisterResponse(
    success: json["success"] == null ? "" : json["success"],
    message: json["message"] == null ? "" : json["message"],
    data: json["data"] == null ? null : EmployeeRegisterData.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "success": success == null ? null : success,
    "message": message == null ? null : message,
    "data": data == null ? null : data!.toMap(),
  };
}

class EmployeeRegisterData {
  EmployeeRegisterData({
    this.dataObject,
  });

  dynamic dataObject;

  factory EmployeeRegisterData.fromJson(String str) => EmployeeRegisterData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EmployeeRegisterData.fromMap(Map<String, dynamic> json) => EmployeeRegisterData(
    dataObject: json["dataObject"],
  );

  Map<String, dynamic> toMap() => {
    "dataObject": dataObject,
  };
}
