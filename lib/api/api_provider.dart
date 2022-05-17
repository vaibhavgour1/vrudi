import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:vrudi/api/endpoints.dart';
import 'package:vrudi/main.dart';
import 'package:vrudi/ui/login/model/login_response.dart';

class ApiProvider {
  static ApiProvider apiProvider = ApiProvider.internal();

  ApiProvider.internal();

  factory ApiProvider() {
    return apiProvider;
  }

  Future<LoginResponse> login() async {
    Response res = await dio.post(Endpoint.LOGIN, data: {"userId": "vaibhav", "password": "test#123"});
    log("$res");
    return LoginResponse.fromJson(res.toString());
  }
}
