import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamin_of_the_day/common/router/applications_router.dart';
import 'package:vitamin_of_the_day/common/router/redirect_routes.dart';
import 'package:vitamin_of_the_day/common/view/toolbar.dart';

import 'cubit/home_cubit.dart';
import 'view/item_view.dart';

class HomePage extends StatelessWidget {

  String setToolbarTitle() => "Vitamina do Dia";

  bool displayToolbarBackIcon() => false;

  Widget setPage(BuildContext context, Loaded state) {
    return Scaffold(appBar: CustomToolbar(this.setToolbarTitle(), this.displayToolbarBackIcon()), body: this.setBody(context, state));
  }

  @override
  Container setBody(BuildContext context, Loaded state) {
    return Container(
      color: Colors.white30,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              HomeItemView(state.luckOfTheDayModel, pressedLuckOfTheDayCard),
              HomeItemView(state.smartVitaminModel, pressedSmartVitaminCard),
              HomeItemView(state.searchVitaminModel, pressedSearchVitaminCard),
            ],
          ),
        ),
      ),
    );
  }

  void pressedLuckOfTheDayCard(BuildContext context) {}

  void pressedSmartVitaminCard(BuildContext context) {
    RedirectRoutes.goToSmartVitamin(context);
  }

  void pressedSearchVitaminCard(BuildContext context) {
    RedirectRoutes.goToSearchVitamin(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is Loaded) {
          return setPage(context, state);
        }
        return Container();
      },
    );
  }
}
