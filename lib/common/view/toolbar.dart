import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'colors.dart';

class CustomToolbar extends StatelessWidget implements PreferredSizeWidget {
  final String _title;
  final bool displayBackButton;

  CustomToolbar(this._title, this.displayBackButton);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: _validateBackButton(context),
      title: Text(
        _title,
        style: GoogleFonts.ubuntu(
          textStyle: TextStyle(
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: HexColor(PaletteColors.primaryColor),
    );
  }

  IconButton _validateBackButton(BuildContext context) {
    if (displayBackButton) {
      return IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      );
    } else {
      return null;
    }
  }
}
