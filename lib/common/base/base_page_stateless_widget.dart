import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/components/toolbar.dart';

abstract class BasePageStatelessWidget<T> extends StatelessWidget {

  Container setBody(BuildContext context, T t);

  String setToolbarTitle();

  bool displayToolbarBackIcon();

  Widget setPage(BuildContext context, T state) {
    return Scaffold(
      appBar: CustomToolbar(this.setToolbarTitle(), this.displayToolbarBackIcon()),
      body: this.setBody(context, state),
    );
  }
}
