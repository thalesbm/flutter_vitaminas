import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamin_of_the_day/common/router/redirect_routes.dart';
import 'package:vitamin_of_the_day/common/view/base_page_stateless_widget.dart';
import 'package:vitamin_of_the_day/feature/luck/cubit/luck_cubit.dart';
import 'package:vitamin_of_the_day/feature/luck/cubit/luck_state.dart';

class LuckPage extends BasePageStatelessWidget<Loading> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LuckCubit, LuckState>(
      builder: (context, state) {
        if (state is Loading) {
          return setPage(context, state);
        } else if (state is Loaded) {
          return finishedLoaded(context, state);
        }
        return Container();
      },
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
          )
      ),
    );
  }

  Widget finishedLoaded(BuildContext context, Loaded state) {
    RedirectRoutes.goToDetails(context, state.item, true);
    return Container();
  }
}
