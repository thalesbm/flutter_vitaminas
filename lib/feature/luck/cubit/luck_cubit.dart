import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:vitamin_of_the_day/common/vitamins.dart';
import 'package:vitamin_of_the_day/feature/luck/cubit/luck_state.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';

class LuckCubit extends Cubit<LuckState> {
  LuckCubit() : super(Loading()) {
    loading();
  }

  loading() {
    Future.delayed(Duration(seconds: 5), () {
      emit(Loaded(item: _getRandomVitamin()));
    });
  }

  VitaminModel _getRandomVitamin() {
    var list = Vitamins.list;
    var random = new Random();
    var index = random.nextInt(list.length);
    return list[index];
  }
}
