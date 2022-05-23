import 'package:equatable/equatable.dart';

abstract class ForgetPasswordState extends Equatable {}

class ForgetPasswordInitialState extends ForgetPasswordState {
  @override
  List<Object?> get props => [];
}

class GetForgetPasswordState extends ForgetPasswordState {
  final message;
  GetForgetPasswordState({required this.message});

  @override
  List<Object> get props => [message];
}

class LoadingState extends ForgetPasswordState {

  @override
  List<Object?> get props => [];
}

class GetForgetPasswordFailureState extends ForgetPasswordState {
  final String message;
  GetForgetPasswordFailureState({required this.message});
  @override
  List<Object?> get props => [message];
}
