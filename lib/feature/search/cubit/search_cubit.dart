import 'package:bloc/bloc.dart';
import 'package:vitamin_of_the_day/common/vitamins.dart';
import 'package:vitamin_of_the_day/feature/search/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {

  SearchCubit() : super(Loaded()) {
    load();
  }

  load(){
    emit(Loaded(
      list: Vitamins.list,
    ));
  }
}
