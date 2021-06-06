import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamin_of_the_day/feature/home/home_page.dart';
import 'package:vitamin_of_the_day/feature/search/search_page.dart';

import 'feature/home/cubit/home_cubit.dart';
import 'feature/search/cubit/search_cubit.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: _applicationRoutes(),
      )
  );
}

Map<String, WidgetBuilder> _applicationRoutes() => {
  "/": (context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(),
      child: HomePage(),
    );
  },

  "search": (context) {
    return BlocProvider<SearchCubit>(
      create: (context) => SearchCubit(),
      child: SearchPage(),
    );
  },

};

// void main() {
//   runApp(VitaminApp());
// }
//
// class VitaminApp extends StatefulWidget {
//   @override
//   _VitaminAppState createState() => _VitaminAppState();
// }
//
// class _VitaminAppState extends State<VitaminApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }
