import 'package:flutter/material.dart';

import '../../view/toolbar.dart';
import 'view/body.dart';
import 'view/header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var vitaminOfTheDay = "vitamina de banana";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: CustomToolbar("Vitamina do Dia"),
      body: Column(
        children: [
          Header(vitaminOfTheDay, pressedUpdateTip, pressedHeader),
          Row(
            children: [
              Body("Pesquisar", pressedSearch),
              Spacer(),
              Body("Filtrar por frutas", pressedFilter),
            ],
          ),
        ],
      ),
    ));
  }

  void pressedFilter() {
    setState(() {
      print("pressedFilter");
    });
  }

  void pressedUpdateTip() {
    setState(() {
      print("pressedUpdateTip");
    });
  }

  void pressedSearch() {
    setState(() {
      print("pressedSearch");
    });
  }

  void pressedHeader() {
    setState(() {
      print("pressedHeader");
    });
  }
}
