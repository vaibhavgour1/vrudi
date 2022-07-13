import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vrudi/api/endpoints.dart';
import 'package:vrudi/api/server_error.dart';
import 'package:vrudi/main.dart';
import 'package:vrudi/ui/clientinputform/model/client_response.dart';
import 'package:vrudi/ui/login/model/login_response.dart';
import 'package:vrudi/ui/selectfavColor/model/fav_model.dart';
import 'package:vrudi/utility/utilty.dart';

import '../ui/signup/signup_response.dart';

class ApiProvider {
  static ApiProvider apiProvider = ApiProvider.internal();

  ApiProvider.internal();

  factory ApiProvider() {
    return apiProvider;
  }

  Future<LoginResponse> login({
    required Map<String, dynamic> input,
  }) async {
    log("$input");
    try {
      Response res =
          await dio.get(Endpoint.LOGIN, queryParameters: {"email": input["userId"], "password": input["password"]});
      log("res--->$res");
      return LoginResponse.fromJson(res.toString());
    } catch (error) {
      EasyLoading.dismiss();
      String message = "";
      if (error is DioError) {
        ServerError e = ServerError.withError(error: error);
        message = e.getErrorMessage();
      } else {
        message = "Please try again later!";
      }
      print("Exception occurred: $message stackTrace: $error");
      Utility.showToast(msg: "$error");
      return LoginResponse(success: false, message: message);
    }
  }

  Future<SignUpResponse> signup(Map<String, dynamic> input) async {
    print(":signUP");
    var myres = '';
    Response res = await dio.post(Endpoint.SIGNUP, data: input);
    myres = res.toString();
    log("res--$myres");
    return signUpResponseFromMap(res.toString());
  }

  Future<ForgetPasswordResponse> resetPassword(Map<String, dynamic> input) async {
    Response res = await dio.post(Endpoint.FORGETPASSWORD, data: input, queryParameters: {});
    log("res-->$res");
    return ForgetPasswordResponse.fromJson(res.toString());
  }

  Future<ClientFormResponse> clientForm(Map<String, dynamic> input) async {
    Response res = await dio.post(Endpoint.ORGANIZATION, data: input);
    log("$res");
    return ClientFormResponse.fromJson(res.toString());
  }
}
