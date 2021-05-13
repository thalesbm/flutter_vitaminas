import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';

class ItemView extends StatelessWidget {
  final VitaminModel _model;
  final Function _pressedItem;

  ItemView(this._model, this._pressedItem);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: _getTitle(),
      subtitle: _getSubTitle(),
      leading: _getLeadingIcon(),
      trailing: _getTrailingIcon(),
      onTap: () {
        _pressedItem(context);
      },
    );
  }

  Text _getTitle() {
    return Text(
      _model.title,
      style: GoogleFonts.ubuntu(
        textStyle: TextStyle(letterSpacing: 1, color: Colors.black54, fontSize: 14),
      ),
    );
  }

  Text _getSubTitle() {
    return Text(
      _model.description,
      style: GoogleFonts.ubuntu(
        textStyle: TextStyle(letterSpacing: 1, color: Colors.black38, fontSize: 12),
      ),
    );
  }

  Icon _getTrailingIcon() {
    return Icon(
      Icons.keyboard_arrow_right,
      color: Colors.black54,
    );
  }

  Image _getLeadingIcon() {
    return Image(
      image: AssetImage('assets/images/001-orange.png'),
      height: 36,
      width: 36,
    );
  }
}
