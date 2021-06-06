import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamin_of_the_day/common/view/toolbar.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';

import 'cubit/detail_cubit.dart';
import 'cubit/detail_state.dart';

class DetailsPage extends StatelessWidget {

  String setToolbarTitle() => "Vitamina de " + _model.title;

  bool displayToolbarBackIcon() => true;

  Widget setPage(BuildContext context, Loaded state) {
    return Scaffold(appBar: CustomToolbar(this.setToolbarTitle(), this.displayToolbarBackIcon()), body: this.setBody(context, state));
  }

  final VitaminModel _model;

  DetailsPage(this._model);

  @override
  Container setBody(BuildContext context, Loaded state) {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        if (state is Loaded) {
          return setPage(context, state);
        }
        return Container();
      },
    );
  }
}
