import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vrudi/main.dart';
import 'package:vrudi/ui/selectfavColor/model/fav_model.dart';
import 'package:vrudi/ui/selectfavColor/select_fav_event.dart';
import 'package:vrudi/ui/selectfavColor/select_fav_state.dart';
import 'package:vrudi/utility/network.dart';
import 'package:vrudi/utility/utilty.dart';

class SelectFavBloc extends Bloc<SelectFavEvent, SelectFavState> {
  SelectFavBloc() : super(SelectFavInitialState());

  @override
  Stream<SelectFavState> mapEventToState(SelectFavEvent event) async* {
    if (event is GetSelectFavEvent) {
      yield LoadingState();
      yield* getFav(
        event.input,
      );
    }
  }

  Stream<SelectFavState> getFav(Map<String, dynamic> input) async* {
    if (await Network.isConnected()) {
      ForgetPasswordResponse result = await apiProvider.resetPassword(input);
      EasyLoading.dismiss();
      log("$result");
      if (result.hasErrors == false) {
        yield GetSelectFavState(message: result.message);
      } else {
        yield GetSelectFavFailureState(message: result.message);
      }
    } else {
      EasyLoading.dismiss();
      Utility.showToast(msg: "please check your internet connection");
    }
  }
}
