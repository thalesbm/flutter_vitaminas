import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vitamin_of_the_day/common/view/colors.dart';
import 'package:vitamin_of_the_day/common/view/toolbar.dart';
import 'package:vitamin_of_the_day/feature/home/model/home_model.dart';
import 'package:vitamin_of_the_day/feature/search/view/search_view.dart';
import 'package:vitamin_of_the_day/feature/smart/view/smart_view.dart';

import 'item_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: CustomToolbar("Vitamina do Dia"), body: _setBody()));
  }

  Container _setBody() {
    return Container(
      color: Colors.white30,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              HomeItemView(_createLuckOfTheDayModel(), pressedLuckOfTheDayCard),
              HomeItemView(_createSmartVitaminModel(), pressedSmartVitaminCard),
              HomeItemView(_createSearchVitaminModel(), pressedSearchVitaminCard),
            ],
          ),
        ),
      ),
    );
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

  void pressedLuckOfTheDayCard(BuildContext context) {
  }

  void pressedSmartVitaminCard(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return SmartView();
    }));
  }

  void pressedSearchVitaminCard(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return SearchView();
    }));
  }
}
