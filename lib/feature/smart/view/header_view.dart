import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vitamin_of_the_day/common/view/colors.dart';

class HeaderChipsView extends StatelessWidget {
  final String _value;

  HeaderChipsView(this._value);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 16),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          _value,
          style: GoogleFonts.ubuntu(
            textStyle: TextStyle(
              letterSpacing: 2,
              color: HexColor(PaletteColors.primaryColor),
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
