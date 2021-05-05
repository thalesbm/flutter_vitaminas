import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'colors.dart';

class CustomToolbar extends StatelessWidget implements PreferredSizeWidget {
  final String _title;

  CustomToolbar(this._title);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(_title),
      backgroundColor: HexColor(PaletteColors.PRIMARY_COLOR),
    );
  }
}
