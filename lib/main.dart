import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamin_of_the_day/feature/detail/cubit/detail_cubit.dart';
import 'package:vitamin_of_the_day/feature/detail/details_page.dart';
import 'package:vitamin_of_the_day/feature/home/home_page.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';
import 'package:vitamin_of_the_day/feature/search/search_page.dart';
import 'package:vitamin_of_the_day/feature/smart/smart_page.dart';

import 'feature/home/cubit/home_cubit.dart';
import 'feature/search/cubit/search_cubit.dart';
import 'feature/smart/cubit/smart_cubit.dart';

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

  "smart": (context) {
    return BlocProvider<SmartCubit>(
      create: (context) => SmartCubit(),
      child: SmartPage(),
    );
  },

  "details": (context) {
    final args = ModalRoute.of(context).settings.arguments as VitaminModel;
    return BlocProvider<DetailsCubit>(
      create: (context) => DetailsCubit(),
      child: DetailsPage(args),
    );
  },

};
