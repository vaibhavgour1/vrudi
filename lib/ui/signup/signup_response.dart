import 'dart:convert';

class SignUpResponse {
  SignUpResponse({
    required this.email,
    required this.password,
    required this.username,
    required this.name,
    required this.usertype,
    required this.professional,
    required this.securityQuestion,
    required this.securityAnswer,
  });
  String email;
  String password;
  String username;
  String name;
  String usertype;
  String professional;
  String securityQuestion;
  String securityAnswer;

  factory SignUpResponse.fromJson(String str) =>
      SignUpResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignUpResponse.fromMap(Map<String, dynamic> json) => SignUpResponse(
        email: json["email"] == null ? "" : json["email"].toString(),
        password: json["password"] == null ? "" : json["password"].toString(),
        username: json["username"] == null ? "" : json["username"].toString(),
        name: json["name"] == null ? "" : json["name"].toString(),
        usertype: json["usertype"] == null ? "" : json["usertype"].toString(),
        professional:
            json["professional"] == null ? "" : json["professional"].toString(),
        securityQuestion: json["securityQuestion"] == null
            ? ""
            : json["securityQuestion"].toString(),
        securityAnswer: json["securityAnswer"] == null
            ? ""
            : json["securityAnswer"].toString(),
      );

  Map<String, dynamic> toMap() => {
        "email": email == null ? null : email,
        "password": password == null ? null : password,
        "username": username == null ? null : username,
        "name": name == null ? null : name,
        "usertype": usertype == null ? null : usertype,
        "professional": professional == null ? null : professional,
        "securityQuestion": securityQuestion == null ? null : securityQuestion,
        "securityAnswer": securityAnswer == null ? null : securityAnswer,
      };
}
