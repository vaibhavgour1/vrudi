import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:vrudi/api/endpoints.dart';
import 'package:vrudi/main.dart';
import 'package:vrudi/ui/login/model/login_response.dart';
import 'package:vrudi/ui/selectfavColor/model/fav_model.dart';

import '../ui/signup/signup_response.dart';

class ApiProvider {
  static ApiProvider apiProvider = ApiProvider.internal();

  ApiProvider.internal();

  factory ApiProvider() {
    return apiProvider;
  }

  Future<LoginResponse> login(Map<String, dynamic> input) async {
    log("$input");
    Response res = await dio.post(Endpoint.LOGIN, data: input);
    log("$res");
    return LoginResponse.fromJson(res.toString());
  }

  Future<SignUpResponse> signup(Map<String, dynamic> input) async {
    Response res = await dio.post(Endpoint.SIGNUP, data: input);
    log("$res");
    return SignUpResponse.fromJson(res.toString());
  }

  Future<ForgetPasswordResponse> resetPassword(Map<String, dynamic> input) async {
    Response res = await dio.post(Endpoint.RESETPASSWORD, data: input);
    log("$res");
    return ForgetPasswordResponse.fromJson(res.toString());
  }
}
