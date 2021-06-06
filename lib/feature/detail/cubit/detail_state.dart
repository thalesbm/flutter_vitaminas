import 'package:equatable/equatable.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();

  @override
  List<Object> get props => [];
}

class Loaded extends DetailsState {
  Loaded();
}
