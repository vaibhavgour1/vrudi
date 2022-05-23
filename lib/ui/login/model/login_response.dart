import 'dart:convert';
// class SignUpResponse {
//   SignUpResponse({
//     this.data,
//     this.hasErrors,
//     this.message,
//   });
//
//   List<Datum> data;
//   bool hasErrors;
//   String message;
//
//   factory SignUpResponse.fromJson(String str) => SignUpResponse.fromMap(json.decode(str));
//
//   String toJson() => json.encode(toMap());
//
//   factory SignUpResponse.fromMap(Map<String, dynamic> json) => SignUpResponse(
//     data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
//     hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
//     message: json["message"] == null ? null : json["message"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toMap())),
//     "hasErrors": hasErrors == null ? null : hasErrors,
//     "message": message == null ? null : message,
//   };
// }
class LoginResponse {
  LoginResponse({
    this.data,
    required this.hasErrors,
    required this.message,
  });

  LoginData? data;
  bool hasErrors;
  String message;

  factory LoginResponse.fromJson(String str) => LoginResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromMap(Map<String, dynamic> json) => LoginResponse(
        data: json["data"] == null ? null : LoginData.fromMap(json["data"]),
        hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toMap() => {
        "data": data == null ? null : data!.toMap(),
        "hasErrors": hasErrors == null ? null : hasErrors,
        "message": message == null ? null : message,
      };
}

class LoginData {
  LoginData({
    required this.id,
    required this.email,
    required this.fullName,
    required this.userName,
    required this.userType,
    required this.industry,
  });

  String id;
  String email;
  String fullName;
  String userName;
  String userType;
  String industry;

  factory LoginData.fromJson(String str) => LoginData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginData.fromMap(Map<String, dynamic> json) => LoginData(
        id: json["id"] == null ? "" : json["id"].toString(),
        email: json["email"] == null ? "" : json["email"].toString(),
        fullName: json["fullName"] == null ? "" : json["fullName"].toString(),
        userName: json["userName"] == null ? "" : json["userName"].toString(),
        userType: json["userType"] == null ? "" : json["userType"].toString(),
        industry: json["industry"] == null ? "" : json["industry"].toString(),
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "email": email == null ? null : email,
        "fullName": fullName == null ? null : fullName,
        "userName": userName == null ? null : userName,
        "userType": userType,
        "industry": industry,
      };
}
