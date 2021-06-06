import 'package:bloc/bloc.dart';
import 'package:vitamin_of_the_day/feature/smart/cubit/smart_state.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';

class SmartCubit extends Cubit<SmartState> {

  SmartCubit() : super(Loaded()) {
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
      fruits: _fruits,
      highlightsFruits: _highlightsFruits,
    ));
  }

  List<String> _highlightsFruits = [
    "Abacate",
    "Abacaxi",
    "Banana",
    "Carambola",
    "Coco",
    "Goiaba",
    "Kiwi",
    "Laranja",
    "Limão",
    "Maçã",
    "Mamão",
    "Manga",
    "Maracujá",
    "Melancia",
    "Melão",
    "Morango",
    "Pera",
    "Pêssego",
    "Tangerina"
  ];
  List<String> _fruits = [
    "Açaí",
    "Acerola",
    "Amora",
    "Araticum",
    "Bacaba",
    "Biribá",
    "Cacau",
    "Cajá",
    "Caqui",
    "Cereja",
    "Cidra",
    "Cupuaçu",
    "Figo",
    "Framboesa",
    "Groselha",
    "Ingá",
    "Jabuticaba",
    "Jaca",
    "Jambo",
    "Jenipapo",
    "Mangaba",
    "Pequi",
    "Pitanga",
    "Pitaya",
    "Pupunha",
    "Romã",
    "Siriguela",
    "Tâmara",
    "Tamarindo",
    "Tucumã",
    "Uva"
  ];
}
