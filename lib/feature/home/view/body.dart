import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vitamin_of_the_day/view/colors.dart';

class Body extends StatelessWidget {
  final String _text;
  final Function _pressed;

  Body(this._text, this._pressed);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _pressed,
      child: Container(
        margin: EdgeInsets.all(16),
        width: 160,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white60,
          border: Border.all(
            color: HexColor(PaletteColors.BORDER_COLOR),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  child: IconButton(
                    onPressed: () {},
                    iconSize: 28.0,
                    icon: Icon(Icons.update_rounded),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  child: Text(
                    _text,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
