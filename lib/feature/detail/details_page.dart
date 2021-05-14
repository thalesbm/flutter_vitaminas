import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/base_page_widget.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';

class DetailsPage extends BasePageStatelessWidget {

  @override
  String setToolbarTitle() => "Vitamina de " + _model.title;

  final VitaminModel _model;

  DetailsPage(this._model);

  @override
  Container setBody(BuildContext context) {
    return Container();
  }
}
