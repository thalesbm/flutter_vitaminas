import 'package:equatable/equatable.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class Loaded extends SearchState {
  final List<VitaminModel> list;

  Loaded({this.list});
}
