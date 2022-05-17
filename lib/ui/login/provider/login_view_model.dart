import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vrudi/main.dart';
import 'package:vrudi/ui/login/model/login_response.dart';

class LoginViewModel extends ChangeNotifier {
  LoginResponse? result;
  Future<void> login() async {
    result = await apiProvider.login();
    log("${result!.email}");
    log("${result!.fullName}");
    log("${result!.id}");
    log("${result!.securityQuestion}");
    notifyListeners();
  }
}
