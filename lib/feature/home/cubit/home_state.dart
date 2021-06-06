part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class Loaded extends HomeState {
  final HomeModel luckOfTheDayModel;
  final HomeModel smartVitaminModel;
  final HomeModel searchVitaminModel;

  Loaded({this.luckOfTheDayModel, this.smartVitaminModel, this.searchVitaminModel});
}
