import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vitamin_of_the_day/common/view/colors.dart';

class ChipsView extends StatefulWidget {
  final String fruit;

  ChipsView(this.fruit);

  @override
  _ChipsState createState() => _ChipsState(this.fruit);
}

class _ChipsState extends State<ChipsView> {
  final String _fruit;
  bool _isSelected = false;

  _ChipsState(this._fruit);

  @override
  Widget build(BuildContext context) {
    return _getChoiceChip(context, _fruit);
    // return Container(
    //   child: Wrap(
    //     runSpacing: 8,
    //     spacing: 8,
    //     runAlignment: WrapAlignment.center,
    //     children: [
    //       _getChoiceChip(context, _fruits[0]),
    //       _getChoiceChip(context, _fruits[0])
    //     ],
    //     // children: List.generate(_fruits.length, (index) {
    //     //   return _getChoiceChip(context, _fruits[index]);
    //     // }),
    //   ),
    // );
  }

  ChoiceChip _getChoiceChip(BuildContext context, String option) {
    return ChoiceChip(
      padding: EdgeInsets.only(left: 8, right: 8),
      label: getText(option),
      selected: _isSelected,
      selectedColor: HexColor(PaletteColors.thirdCardColor),
      backgroundColor: HexColor(PaletteColors.grayColor),
      shape: _getShape(),
      onSelected: (selected) {
        setState(() {
          _isSelected = selected;
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
          color: _getTextColor(),
        ),
      ),
    );
  }

  StadiumBorder _getShape() {
    return StadiumBorder(
      side: BorderSide(
        color: _getBorderColor(),
      ),
    );
  }

  Color _getBorderColor() {
    String color = PaletteColors.primaryColor;
    if (_isSelected) {
      color = PaletteColors.thirdCardColor;
    }
    return HexColor(color);
  }

  Color _getTextColor() {
    if (_isSelected) {
      return Colors.white;
    } else {
      return HexColor(PaletteColors.primaryColor);
    }
  }
}
