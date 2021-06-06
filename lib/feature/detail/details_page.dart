import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamin_of_the_day/common/base_page_stateless_widget.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';

import 'cubit/detail_cubit.dart';
import 'cubit/detail_state.dart';

class DetailsPage extends BasePageStatelessWidget<Loaded> {

  final VitaminModel _model;

  DetailsPage(this._model);

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

  @override
  String setToolbarTitle() => "Vitamina de " + _model.title;

  @override
  bool displayToolbarBackIcon() => true;

  @override
  Container setBody(BuildContext context, Loaded state) {
    return Container();
  }
}
