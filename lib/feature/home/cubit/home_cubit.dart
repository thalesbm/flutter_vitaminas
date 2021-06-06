
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vitamin_of_the_day/common/view/colors.dart';
import 'package:vitamin_of_the_day/feature/home/model/home_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {

  HomeCubit() : super(Loaded()) {
    load();
  }

  load(){
    emit(Loaded(
      luckOfTheDayModel: _createLuckOfTheDayModel(),
      smartVitaminModel: _createSmartVitaminModel(),
      searchVitaminModel: _createSearchVitaminModel(),
    ));
  }

  HomeModel _createLuckOfTheDayModel() {
    return HomeModel(
        "Sorte do Dia",
        "Está díficil de escolher a vitamina de hoje né? Deixa que a gente selecione uma para você!!",
        HexColor(PaletteColors.firstCardColor));
  }

  HomeModel _createSmartVitaminModel() {
    return HomeModel(
        "Vitamina Inteligente",
        "Não sabe qual vitamina fazer? Que tal você nos falar o que tem na geladeira e a gente falar o que você pode fazer?",
        HexColor(PaletteColors.thirdCardColor));
  }

  HomeModel _createSearchVitaminModel() {
    return HomeModel(
        "Pesquisar Vitaminas", "Veja todas vitamonas que temos cadastradas.", HexColor(PaletteColors.secondCardColor));
  }

}
