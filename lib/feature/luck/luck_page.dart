import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamin_of_the_day/common/base/base_page_stateless_widget.dart';
import 'package:vitamin_of_the_day/common/router/redirect_routes.dart';
import 'package:vitamin_of_the_day/feature/luck/cubit/luck_cubit.dart';
import 'package:vitamin_of_the_day/feature/luck/cubit/luck_state.dart';

class LuckPage extends BasePageStatelessWidget<Loading> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LuckCubit, LuckState>(
      listener: (context, state) {
        if (state is Loaded) {
          finishedLoaded(context, state);
        }
      },
      builder: (context, state) {
        if (state is Loading) {
          return setPage(context, state);
        }
        return Container();
      }
    );
  }

  @override
  String setToolbarTitle() => "Vitamina do Dia";

  @override
  bool displayToolbarBackIcon() => true;

  @override
  Container setBody(BuildContext context, Loading state) {
    return Container(
      child: Center(
          child: Image(
        image: AssetImage('assets/gifs/loading.gif'),
        height: 220,
        width: 220,
      )),
    );
  }

  finishedLoaded(BuildContext context, Loaded state) {
    RedirectRoutes.goToDetails(context, state.item, true);
  }
}
