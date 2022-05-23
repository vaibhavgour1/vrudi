import 'package:equatable/equatable.dart';

abstract class ForgetPasswordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetForgetPasswordEvent extends ForgetPasswordEvent {
  final Map<String, dynamic> input;
  GetForgetPasswordEvent({required this.input});

  @override
  List<Object?> get props => [input];
}
