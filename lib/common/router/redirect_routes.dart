import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/router/routes.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';

class RedirectRoutes {

  static void goToSmartVitamin(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.smart);
  }

  static void goToSearchVitamin(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.search);
  }

  static void goToDetails(BuildContext context, VitaminModel model, bool removeCurrent) {
    if (removeCurrent) {
      Navigator.of(context).popAndPushNamed(Routes.details, arguments: model);
    } else {
      Navigator.of(context).pushNamed(Routes.details, arguments: model);
    }
  }

  static void goToLuckOfTheDay(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.luck);
  }
}
