import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vrudi/ui/chat/bloc/chat_event.dart';
import 'package:vrudi/ui/chat/bloc/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatInitialState());

  @override
  Stream<ChatState> mapEventToState(ChatEvent event) async* {
    if (event is GetChatEvent) {
      yield LoadingState();
      // yield* getChat(
      //   event.input,
      // );
    }
  }

  // Stream<ChatState> getChat(Map<String, dynamic> input) async* {
  //   if (await Network.isConnected()) {
  //     ChatResponse result = await apiProvider.Chat(input);
  //     SharedPref.setStringPreference(SharedPref.VENDORID, result.data!.id);
  //     EasyLoading.dismiss();
  //     log("$result");
  //     if (result.hasErrors == false) {
  //       yield GetChatState(message: result.message);
  //     } else {
  //       yield GetChatFailureState(message: result.message);
  //     }
  //   } else {
  //     EasyLoading.dismiss();
  //     Utility.showToast(msg: "please check your internet connection");
  //   }
  // }
}
