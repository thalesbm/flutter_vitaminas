
import 'package:bloc/bloc.dart';
import 'package:vitamin_of_the_day/feature/search/cubit/search_state.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';

class SearchCubit extends Cubit<SearchState> {

  SearchCubit() : super(Loaded()) {
    load();
  }

  List<VitaminModel> _list = [
    VitaminModel("Banana com mamão", "005-banana"),
    VitaminModel("Banana com mamão e maça", "015-apple"),
    VitaminModel("Banana com mamão e pera", "014-pear"),
    VitaminModel("Abacate", "022-avocado"),
    VitaminModel("Melancia", "006-water-melon"),
    VitaminModel("Uva", "017-grapes"),
  ];

  load(){
    emit(Loaded(
      list: _list,
    ));
  }
}
