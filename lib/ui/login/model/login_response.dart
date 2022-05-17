import 'dart:convert';

class LoginResponse {
  LoginResponse({
    required this.id,
    required this.email,
    required this.fullName,
    required this.userName,
    required this.password,
    required this.securityQuestion,
    required this.securityQuestionAnswer,
  });

  String id;
  String email;
  String fullName;
  String userName;
  String password;
  String securityQuestion;
  String securityQuestionAnswer;

  factory LoginResponse.fromJson(String str) => LoginResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromMap(Map<String, dynamic> json) => LoginResponse(
        id: json["id"] == null ? "" : json["id"].toString(),
        email: json["email"] == null ? "" : json["email"].toString(),
        fullName: json["fullName"] == null ? "" : json["fullName"].toString(),
        userName: json["userName"] == null ? "" : json["userName"].toString(),
        password: json["password"] == null ? "" : json["password"].toString(),
        securityQuestion: json["securityQuestion"] == null ? "" : json["securityQuestion".toString()],
        securityQuestionAnswer: json["securityQuestionAnswer"] == null ? "" : json["securityQuestionAnswer"].toString(),
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "email": email == null ? null : email,
        "fullName": fullName == null ? null : fullName,
        "userName": userName == null ? null : userName,
        "password": password == null ? null : password,
        "securityQuestion": securityQuestion == null ? null : securityQuestion,
        "securityQuestionAnswer": securityQuestionAnswer == null ? null : securityQuestionAnswer,
      };
}
