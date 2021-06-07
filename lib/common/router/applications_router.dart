import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamin_of_the_day/common/router/routes.dart';
import 'package:vitamin_of_the_day/feature/detail/cubit/detail_cubit.dart';
import 'package:vitamin_of_the_day/feature/detail/details_page.dart';
import 'package:vitamin_of_the_day/feature/home/cubit/home_cubit.dart';
import 'package:vitamin_of_the_day/feature/home/home_page.dart';
import 'package:vitamin_of_the_day/feature/luck/cubit/luck_cubit.dart';
import 'package:vitamin_of_the_day/feature/luck/luck_page.dart';
import 'package:vitamin_of_the_day/feature/search/cubit/search_cubit.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';
import 'package:vitamin_of_the_day/feature/search/search_page.dart';
import 'package:vitamin_of_the_day/feature/smart/cubit/smart_cubit.dart';
import 'package:vitamin_of_the_day/feature/smart/smart_page.dart';

class ApplicationsRouter {
  static Map<String, WidgetBuilder> applicationRoutes() => {
        Routes.home: (context) {
          return BlocProvider<HomeCubit>(
            create: (context) => HomeCubit(),
            child: HomePage(),
          );
        },
        Routes.search: (context) {
          return BlocProvider<SearchCubit>(
            create: (context) => SearchCubit(),
            child: SearchPage(),
          );
        },
        Routes.smart: (context) {
          return BlocProvider<SmartCubit>(
            create: (context) => SmartCubit(),
            child: SmartPage(),
          );
        },
        Routes.details: (context) {
          final args = ModalRoute.of(context).settings.arguments as VitaminModel;
          return BlocProvider<DetailsCubit>(
            create: (context) => DetailsCubit(),
            child: DetailsPage(args),
          );
        },
        Routes.luck: (context) {
          return BlocProvider<LuckCubit>(
            create: (context) => LuckCubit(),
            child: LuckPage(),
          );
        },
      };
}
