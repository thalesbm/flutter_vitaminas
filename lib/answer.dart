import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function pressedButton;

  Answer(this.pressedButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: pressedButton,
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
        ),
        child: Text("botao"),
      ),
    );
  }
}
