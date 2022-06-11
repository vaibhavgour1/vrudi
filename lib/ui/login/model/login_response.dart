import 'dart:convert';

class LoginResponse {
  LoginResponse({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  Data? data;

  factory LoginResponse.fromJson(String str) =>
      LoginResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromMap(Map<String, dynamic> json) => LoginResponse(
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

  DataObject? dataObject;

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        dataObject: json["dataObject"] == null
            ? null
            : DataObject.fromMap(json["dataObject"]),
      );

  Map<String, dynamic> toMap() => {
        "dataObject": dataObject == null ? null : dataObject!.toMap(),
      };
}

class DataObject {
  DataObject({
    this.token,
  });

  String? token;

  factory DataObject.fromJson(String str) =>
      DataObject.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataObject.fromMap(Map<String, dynamic> json) => DataObject(
        token: json["token"] == null ? null : json["token"],
      );

  Map<String, dynamic> toMap() => {
        "token": token == null ? null : token,
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
