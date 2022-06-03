import 'package:equatable/equatable.dart';

abstract class ChatEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetChatEvent extends ChatEvent {
  final Map<String, dynamic> input;
  GetChatEvent({required this.input});

  @override
  List<Object?> get props => [input];
}
