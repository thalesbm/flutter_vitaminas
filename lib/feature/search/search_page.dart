import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamin_of_the_day/common/base_page_statelesswidget.dart';
import 'package:vitamin_of_the_day/common/router/redirect_routes.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';
import 'package:vitamin_of_the_day/feature/search/view/item_view.dart';

import 'cubit/search_cubit.dart';
import 'cubit/search_state.dart';

class SearchPage extends BasePageStatelessWidget<Loaded> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is Loaded) {
          return setPage(context, state);
        }
        return Container();
      },
    );
  }

  @override
  bool displayToolbarBackIcon() => true;

  @override
  String setToolbarTitle() => "Pesquisar Vitaminas";

  @override
  Container setBody(BuildContext context, Loaded state) {
    return Container(
      child: Column(
        children: [
          _getTextField(),
          Expanded(child: _getListView(state)),
        ],
      ),
    );
  }

  Padding _getTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          suffixIcon: Icon(Icons.search),
          hintText: 'Digite uma vitamina',
        ),
      ),
    );
  }

  ListView _getListView(Loaded state) {
    return ListView.builder(
      itemCount: state.list.length,
      itemBuilder: (context, index) {
        return ItemView(state.list[index], pressedItem);
      },
    );
  }

  void pressedItem(BuildContext context, VitaminModel model) {
    RedirectRoutes.goToDetails(context, model);
  }
}
