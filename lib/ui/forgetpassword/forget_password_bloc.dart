import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vrudi/main.dart';
import 'package:vrudi/ui/forgetpassword/forget_password_event.dart';
import 'package:vrudi/ui/forgetpassword/forget_password_state.dart';
import 'package:vrudi/ui/selectfavColor/model/fav_model.dart';
import 'package:vrudi/utility/network.dart';
import 'package:vrudi/utility/utilty.dart';

class ForgetPasswordBloc extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  ForgetPasswordBloc() : super(ForgetPasswordInitialState());

  @override
  Stream<ForgetPasswordState> mapEventToState(ForgetPasswordEvent event) async* {
    if (event is GetForgetPasswordEvent) {
      yield LoadingState();
      yield* getForgetPassword(
        event.input,
      );
    }
  }

  Stream<ForgetPasswordState> getForgetPassword(Map<String, dynamic> input) async* {
    if (await Network.isConnected()) {
      EasyLoading.show();
      ForgetPasswordResponse result = await apiProvider.resetPassword(input);
      EasyLoading.dismiss();
      log("$result");
      if (result.success == true) {
        yield GetForgetPasswordState(message: result.message);
      } else {
        yield GetForgetPasswordFailureState(message: result.message);
      }
    } else {
      EasyLoading.dismiss();
      Utility.showToast(msg: "please check your internet connection");
    }
  }
}
