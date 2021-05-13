import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/view/toolbar.dart';

class SmartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomToolbar("Vitamina Inteligente"), body: _setBody());
  }

  Container _setBody() {
    return Container(
      child: Chip(
        label: Text('Aaron Burr'),
      ),
    );
  }
}
