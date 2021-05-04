import 'package:flutter/material.dart';

class CustomToolbar extends StatelessWidget implements PreferredSizeWidget {
  final String _title;

  CustomToolbar(this._title);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(_title),
      backgroundColor: Colors.red,
    );
  }
}
