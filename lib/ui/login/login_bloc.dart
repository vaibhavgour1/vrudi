import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vrudi/main.dart';
import 'package:vrudi/ui/login/login_event.dart';
import 'package:vrudi/ui/login/login_state.dart';
import 'package:vrudi/ui/login/model/login_response.dart';
import 'package:vrudi/utility/network.dart';
import 'package:vrudi/utility/utilty.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is GetLoginEvent) {
      yield LoadingState();
      yield* getLogin(
        event.input,
      );
    }
  }

  Stream<LoginState> getLogin(Map<String, dynamic> input) async* {
    if (await Network.isConnected()) {
      LoginResponse result = await apiProvider.login(input);
      EasyLoading.dismiss();
      log("$result");
      if (result.hasErrors == false) {
        yield GetLoginState(message: result.message);
      } else {
        yield GetLoginFailureState(message: result.message);
      }
    } else {
      EasyLoading.dismiss();
      Utility.showToast(msg: "please check your internet connection");
    }
  }
}
