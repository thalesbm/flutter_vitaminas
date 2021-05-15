import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/view/toolbar.dart';

abstract class BasePageStatelessWidget extends StatelessWidget {

  Container setBody(BuildContext context);

  String setToolbarTitle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomToolbar(this.setToolbarTitle()), body: this.setBody(context));
  }
}
