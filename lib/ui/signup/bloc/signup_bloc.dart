import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vrudi/main.dart';
import 'package:vrudi/ui/signup/bloc/signup_event.dart';
import 'package:vrudi/ui/signup/bloc/signup_state.dart';
import 'package:vrudi/ui/signup/signup_response.dart';
import 'package:vrudi/utility/network.dart';

import '../../../utility/utilty.dart';

class SignUpBloc extends Bloc<SignupEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitialState());

  @override
  Stream<SignUpState> mapEventToState(SignupEvent event) async* {
    if (event is GetSignUpEvent) {
      yield SignUpInitialState();
      // yield* getSignup(event.input);
      yield* getSignupForApi(event.input);
    }
  }

  // Stream<SignUpState> getSignup(Map<String, dynamic> input) async* {
  //   if (await Network.isConnected()) {
  //     print("lsignupevent ==> $input");
  //     SignUpResponse result = await apiProvider.signup(input);
  //     // if (result.id.isNotEmpty) {
  //     //   EasyLoading.dismiss();
  //     //   yield GetSignUpState(message: result);
  //     //
  //     //   log(">>>>>>>$result");
  //     // }
  //     // if (result.hasErrors) {
  //     // }
  //     else {
  //       yield SignUpFailureState(message: "Error");
  //     }
  //   } else {
  //     EasyLoading.dismiss();
  //     Utility.showToast(msg: "please check your internet connection");
  //   }
  // }

  Stream<SignUpState> getSignupForApi(Map<String, dynamic> input) async* {
    if (await Network.isConnected()) {
      print("getSignupForApi ==> $input");
      SignUpResponse result = await apiProvider.signup(input);

      if (result.email.isNotEmpty) {
        EasyLoading.dismiss();
        yield GetSignUpState(message: result);

        log(">>>>>>>$result");
      }
      // if (result.hasErrors) {
      // }
      else {
        yield SignUpFailureState(message: "Error");
      }
    } else {
      EasyLoading.dismiss();
      Utility.showToast(msg: "please check your internet connection");
    }
  }
}
