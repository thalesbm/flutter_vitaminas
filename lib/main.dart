import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/router/routes.dart';

import 'common/router/applications_router.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.home,
    routes: ApplicationsRouter.applicationRoutes(),
  ));
}
