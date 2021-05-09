import 'package:flutter/material.dart';

import '../../../view/toolbar.dart';

class SmartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: CustomToolbar( "Vitamina Inteligente"), body: Container()));
  }
}
