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
      label: Text(
        option,
        style: GoogleFonts.ubuntu(
          textStyle: TextStyle(
            color: HexColor(PaletteColors.primaryColor),
          ),
        ),
      ),
      selected: false,
      selectedColor: Colors.deepPurple,
      backgroundColor: Colors.white30,
      shape: StadiumBorder(side: BorderSide()),
      onSelected: (selected) {
        setState(() {});
      },
      // onSelected: (value) {
      //   // setState(() {
      //   //   defaultChoiceIndex = value ? index : defaultChoiceIndex;
      //   // });
      // },
      // backgroundColor: color,
      elevation: 1,
    );
  }
}
