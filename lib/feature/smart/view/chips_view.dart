import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vitamin_of_the_day/common/view/colors.dart';

class ChipsView extends StatefulWidget {
  final List<String> _fruits;

  ChipsView(this._fruits);

  @override
  _ChipsState createState() => _ChipsState(this._fruits);
}

class _ChipsState extends State<ChipsView> {
  final List<String> _fruits;
  bool _select2ed = false;

  _ChipsState(this._fruits);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        runSpacing: 8,
        spacing: 8,
        runAlignment: WrapAlignment.center,
        children: List.generate(_fruits.length, (index) {
          return _getChoiceChip(context, _fruits[index]);
        }),
      ),
    );
  }

  ChoiceChip _getChoiceChip(BuildContext context, String option) {
    return ChoiceChip(
      padding: EdgeInsets.only(left: 8, right: 8),
      label: getText(option),
      selected: _select2ed,
      selectedColor: Colors.deepPurple,
      backgroundColor: HexColor(PaletteColors.grayColor),
      shape: _getShape(),
      onSelected: (selected) {
        setState(() {
          _select2ed = !_select2ed;
        });
      },
      elevation: 1,
    );
  }

  Text getText(String option) {
    return Text(
      option,
      style: GoogleFonts.ubuntu(
        textStyle: TextStyle(
          color: HexColor(PaletteColors.primaryColor),
        ),
      ),
    );
  }

  StadiumBorder _getShape() {
    return StadiumBorder(
      side: BorderSide(
        color: HexColor(PaletteColors.primaryColor),
      ),
    );
  }
}
