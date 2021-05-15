import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/base_page_statelesswidget.dart';
import 'package:vitamin_of_the_day/feature/smart/view/chips_view.dart';
import 'package:vitamin_of_the_day/feature/smart/view/header_view.dart';

class SmartPage extends BasePageStatelessWidget {
  @override
  String setToolbarTitle() => "Vitamina Inteligente";

  @override
  Container setBody(BuildContext context) {
    return Container(
      color: Colors.white30,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HeaderChipsView("Destaque"),
              ChipsView(_highlightsFruits),
              HeaderChipsView("Demais frutas"),
              ChipsView(_fruits),
            ],
          ),
        ),
      ),
    );
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
