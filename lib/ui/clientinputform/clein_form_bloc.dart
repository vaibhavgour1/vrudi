import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vrudi/main.dart';
import 'package:vrudi/ui/clientinputform/clein_form_event.dart';
import 'package:vrudi/ui/clientinputform/clein_form_state.dart';
import 'package:vrudi/ui/clientinputform/model/client_response.dart';
import 'package:vrudi/utility/utilty.dart';

import '../../utility/network.dart';

class ClientFormBloc extends Bloc<ClientFormEvent, ClientFormState> {
  ClientFormBloc() : super(ClientInitialState());

  @override
  Stream<ClientFormState> mapEventToState(ClientFormEvent event) async* {
    if (event is GetClientFormEvent) {
      yield ClientloadingState();
      yield* clientForm(event.input);
    }
  }

  Stream<ClientFormState> clientForm(Map<String, dynamic> input) async* {
    if (await Network.isConnected()) {
      ClientFormResponse result = await apiProvider.clientForm(input);

      EasyLoading.dismiss();
      log("$result");
      yield ClientSuccessState(data: result);
      // if (result.hasErrors == false) {
      // yield GetLoginState(message: result.message);
      // } else {
      // yield GetLoginFailureState(message: result.message);
      // }
    } else {
      EasyLoading.dismiss();
      Utility.showToast(msg: "please check your internet connection");
    }
  }
}
