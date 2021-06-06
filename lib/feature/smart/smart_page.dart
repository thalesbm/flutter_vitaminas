import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamin_of_the_day/common/base_page_statelesswidget.dart';
import 'package:vitamin_of_the_day/common/view/toolbar.dart';
import 'package:vitamin_of_the_day/feature/smart/view/chips_view.dart';
import 'package:vitamin_of_the_day/feature/smart/view/header_view.dart';

import 'cubit/smart_cubit.dart';
import 'cubit/smart_state.dart';

class SmartPage extends StatelessWidget {

  bool displayToolbarBackIcon() => true;

  String setToolbarTitle() => "Vitamina Inteligente";

  Widget setPage(BuildContext context, Loaded state) {
    return Scaffold(appBar: CustomToolbar(this.setToolbarTitle(), this.displayToolbarBackIcon()), body: this.setBody(context, state));
  }

  @override
  Container setBody(BuildContext context, Loaded state) {
    return Container(
      color: Colors.white30,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HeaderChipsView("Destaque"),
              _getFruitsList(state.highlightsFruits),
              HeaderChipsView("Demais frutas"),
              _getFruitsList(state.fruits),
            ],
          ),
        ),
      ),
    );
  }

  Container _getFruitsList(List<String> fruits) {
    return  Container(
      child: Wrap(
        runSpacing: 8,
        spacing: 8,
        runAlignment: WrapAlignment.center,
        children: List.generate(fruits.length, (index) {
          return ChipsView(fruits[index]);
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SmartCubit, SmartState>(
      builder: (context, state) {
        if (state is Loaded) {
          return setPage(context, state);
        }
        return Container();
      },
    );
  }
}
