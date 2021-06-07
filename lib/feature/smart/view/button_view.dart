import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vitamin_of_the_day/common/components/colors.dart';

class ButtonView extends StatelessWidget {

  final Function _pressedItem;

  ButtonView(this._pressedItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 10),
      child: TextButton(
        child: Text(
          "CONTINUAR",
        ),
        style: flatButtonStyle,
        onPressed: () {
          this._pressedItem();
        },
      ),
    );
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: Size(88, 44),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    backgroundColor: HexColor(PaletteColors.thirdCardColor),
  );
}