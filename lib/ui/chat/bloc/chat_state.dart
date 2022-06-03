import 'package:equatable/equatable.dart';

abstract class ChatState extends Equatable {}

class ChatInitialState extends ChatState {
  @override
  List<Object?> get props => [];
}

class GetChatState extends ChatState {
  final message;
  GetChatState({required this.message});

  @override
  List<Object> get props => [message];
}

class LoadingState extends ChatState {
  @override
  List<Object?> get props => [];
}

class GetChatFailureState extends ChatState {
  final String message;
  GetChatFailureState({required this.message});
  @override
  List<Object?> get props => [message];
}
