import 'package:flutter/material.dart';

class HeaderChipsView extends StatelessWidget {
  final String _value;

  HeaderChipsView(this._value);

  @override
  Widget build(BuildContext context) {
    return Text(
        _value,
    );
  }
}
