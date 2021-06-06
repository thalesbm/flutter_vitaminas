import 'package:equatable/equatable.dart';

abstract class SmartState extends Equatable {
  const SmartState();

  @override
  List<Object> get props => [];
}

class Loaded extends SmartState {
  final List<String> fruits;
  final List<String> highlightsFruits;

  Loaded({this.fruits, this.highlightsFruits});
}
