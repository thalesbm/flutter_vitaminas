import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/view/toolbar.dart';

class SearchView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: CustomToolbar("Vitaminas"), body: _setBody()));
  }

  Container _setBody() {
    return Container();
  }
}
