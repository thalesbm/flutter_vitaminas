import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/view/toolbar.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomToolbar("Vitamina de " + _model.title), body: _setBody(context));
  }

  final VitaminModel _model;

  DetailsPage(this._model);

  Container _setBody(BuildContext context) {
    return Container();
  }
}
