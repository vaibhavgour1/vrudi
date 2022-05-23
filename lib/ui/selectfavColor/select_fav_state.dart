import 'package:equatable/equatable.dart';

abstract class SelectFavState extends Equatable {}

class SelectFavInitialState extends SelectFavState {
  @override
  List<Object?> get props => [];
}

class GetSelectFavState extends SelectFavState {
  final message;
  GetSelectFavState({required this.message});

  @override
  List<Object> get props => [message];
}

class LoadingState extends SelectFavState {

  @override
  List<Object?> get props => [];
}

class GetSelectFavFailureState extends SelectFavState {
  final String message;
  GetSelectFavFailureState({required this.message});
  @override
  List<Object?> get props => [message];
}
