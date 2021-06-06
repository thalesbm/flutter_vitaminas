import 'package:bloc/bloc.dart';
import 'package:vitamin_of_the_day/feature/detail/cubit/detail_state.dart';

class DetailsCubit extends Cubit<DetailsState> {

  DetailsCubit() : super(Loaded()) {
    load();
  }

  load(){
    emit(Loaded());
  }
}
