import 'package:equatable/equatable.dart';

abstract class SignupEvent extends Equatable{
  @override
  List<Object?> get props =>[];
}

class GetSignUpEvent extends SignupEvent{
  final Map<String,dynamic> input;
  GetSignUpEvent({required this.input});
@override
  List<Object?> get props => [input];
}
