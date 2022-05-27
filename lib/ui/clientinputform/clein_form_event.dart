import 'package:equatable/equatable.dart';

abstract class ClientFormEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetClientFormEvent extends ClientFormEvent {
  final Map<String, dynamic> input;
  GetClientFormEvent({required this.input});

  @override
  List<Object?> get props => [input];
}
