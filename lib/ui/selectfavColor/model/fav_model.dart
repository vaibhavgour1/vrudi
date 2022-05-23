
import 'dart:convert';

class ForgetPasswordResponse {
  ForgetPasswordResponse({
    required this.data,
    required this.hasErrors,
    required this.message,
  });

  bool data;
  bool hasErrors;
  String message;

  factory ForgetPasswordResponse.fromJson(String str) => ForgetPasswordResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ForgetPasswordResponse.fromMap(Map<String, dynamic> json) => ForgetPasswordResponse(
    data: json["data"] == null ? "" : json["data"],
    hasErrors: json["hasErrors"] == null ? "" : json["hasErrors"],
    message: json["message"] == null ? "" : json["message"].toString(),
  );

  Map<String, dynamic> toMap() => {
    "data": data == null ? null : data,
    "hasErrors": hasErrors == null ? null : hasErrors,
    "message": message == null ? null : message,
  };
}
