import 'package:equatable/equatable.dart';

abstract class SignUpState extends Equatable {}

class SignUpInitialState extends SignUpState {
  @override
  List<Object?> get props => [];
}

class GetSignUpState extends SignUpState {
  final String message;
  GetSignUpState({required this.message});
  @override
  List<Object?> get props => [message];
}

class SignUpLoadingState extends SignUpState {
  @override
  List<Object?> get props => [];
}

class SignUpFailureState extends SignUpState {
  final String message;
  SignUpFailureState({required this.message});
  @override
  List<Object?> get props => [];
}
