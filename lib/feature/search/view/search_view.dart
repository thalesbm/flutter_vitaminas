import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/view/toolbar.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';
import 'package:vitamin_of_the_day/feature/search/view/item_view.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: CustomToolbar("Vitaminas"), body: _setBody(context)));
  }

  List<VitaminModel> model = [
    VitaminModel("Banana com mamão", "Vitamina saudavel facil e rapido de fazer", ""),
    VitaminModel("Banana com mamão", "Vitamina saudavel facil e rapido de fazer", ""),
    VitaminModel("Banana com mamão", "Vitamina saudavel facil e rapido de fazer", ""),
    VitaminModel("Banana com mamão", "Vitamina saudavel facil e rapido de fazer", ""),
    VitaminModel("Banana com mamão", "Vitamina saudavel facil e rapido de fazer", ""),
    VitaminModel("Banana com mamão", "Vitamina saudavel facil e rapido de fazer", ""),
  ];

  ListView _setBody(BuildContext context) {
    return ListView.builder(
      itemCount: model.length,
      itemBuilder: (context, index) {
        return ItemView(model[index], pressedItem);
      },
    );
  }

  void pressedItem(BuildContext context) {}
}
