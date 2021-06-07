import 'package:equatable/equatable.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';

abstract class LuckState extends Equatable {
  const LuckState();

  @override
  List<Object> get props => [];
}

class Loading extends LuckState {
  Loading();
}

class Loaded extends LuckState {
  final VitaminModel item;

  Loaded({this.item});
}
