import 'package:equatable/equatable.dart';

abstract class SelectFavEvent extends Equatable{
  @override
  List<Object?> get props =>[];
}

class GetSelectFavEvent extends SelectFavEvent {
  final Map<String, dynamic> input;
  GetSelectFavEvent({required this.input});

  @override
  List<Object?> get props => [input];
}