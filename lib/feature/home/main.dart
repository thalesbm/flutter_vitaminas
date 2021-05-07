import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vitamin_of_the_day/feature/home/model/home.dart';
import 'package:vitamin_of_the_day/view/colors.dart';

import '../../view/toolbar.dart';
import 'view/item_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: CustomToolbar("Vitamina do Dia"), body: _setBody()));
  }

  SingleChildScrollView _setBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            HomeItemView(createHomeModelFirstCard(), pressedFirstCard),
            HomeItemView(createHomeModelSecondCard(), pressedSecondCard),
            HomeItemView(createHomeModelThirdCard(), pressedThirdCard),
          ],
        ),
      ),
    );
  }

  HomeModel createHomeModelFirstCard() {
    return HomeModel(
        "Sorte do Dia",
        "Está díficil de escolher a vitamina de hoje né? Deixa que a gente selecione uma para você!!",
        HexColor(PaletteColors.firstCardColor));
  }

  HomeModel createHomeModelSecondCard() {
    return HomeModel(
        "Vitamina Inteligente",
        "Não sabe qual vitamina fazer? Que tal você nos falar o que tem na geladeira e a gente falar o que você pode fazer?",
        HexColor(PaletteColors.thirdCardColor));
  }

  HomeModel createHomeModelThirdCard() {
    return HomeModel(
        "Pesquisar Vitaminas",
        "Veja todas vitamonas que temos cadastradas.",
        HexColor(PaletteColors.secondCardColor));
  }

  void pressedFirstCard() {
    setState(() {
      print("pressedThirdCard");
    });
  }

  void pressedSecondCard() {
    setState(() {
      print("pressedThirdCard");
    });
  }

  void pressedThirdCard() {
    setState(() {
      print("pressedThirdCard");
    });
  }
}
