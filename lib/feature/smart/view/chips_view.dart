import 'package:flutter/material.dart';

class ChipsView extends StatelessWidget {
  final List<String> _highlightsFruits;

  ChipsView(this._highlightsFruits);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 4,
      spacing: 4,
      children: List.generate(_highlightsFruits.length, (index) {
        return _getChoiceChip(context, _highlightsFruits[index]);
      }),
    );
  }

  ChoiceChip _getChoiceChip(BuildContext context, String option) {
    return ChoiceChip(
      labelPadding: EdgeInsets.only(left: 8, right: 8),
      label: Text(
        option,
      ),
      selected: false,
      selectedColor: Colors.deepPurple,
      backgroundColor: Colors.amberAccent,
      onSelected: (value) {
        // setState(() {
        //   defaultChoiceIndex = value ? index : defaultChoiceIndex;
        // });
      },
      // backgroundColor: color,
      elevation: 1,
    );
  }
}
