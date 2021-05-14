import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/base_page_widget.dart';

class SmartPage extends BasePageStatelessWidget {

  @override
  Container setBody(BuildContext context) {
    return Container(
      child: Chip(
        label: Text('Aaron Burr'),
      ),
    );
  }

  @override
  String setToolbarTitle() => "Vitamina Inteligente";
}
