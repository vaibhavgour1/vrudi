import 'package:equatable/equatable.dart';

abstract class ClientFormState extends Equatable {}

class ClientInitialState extends ClientFormState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ClientSuccessState extends ClientFormState {
  final data;
  ClientSuccessState({required this.data});
  @override
  // TODO: implement props
  List<Object?> get props => [data];
}

class ClientFailureState extends ClientFormState {
  final message;
  ClientFailureState({required this.message});
  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class ClientloadingState extends ClientFormState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
