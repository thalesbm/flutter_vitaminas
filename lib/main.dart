import 'package:flutter/material.dart';

import 'answer.dart';
import 'header.dart';
import 'view/toolbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      "pergunta 1",
      "pergunta 2",
      "pergunta 3",
      "pergunta 4",
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: CustomToolbar("Vitamina do Dia"),
      body: Column(
        children: [
          Header(questions[questionIndex], pressedButton),
          // Text("oi"),
          // Answer(pressedButton)
        ],
      ),
    ));
  }

  void pressedButton() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }
}
