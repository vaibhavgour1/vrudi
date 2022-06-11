import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetLoginEvent extends LoginEvent {
  final Map<String, dynamic> input;

  GetLoginEvent({required this.input});

  @override
  List<Object?> get props => [input];
}
