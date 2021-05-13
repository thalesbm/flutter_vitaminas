import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/view/toolbar.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';
import 'package:vitamin_of_the_day/feature/search/view/item_view.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomToolbar("Vitaminas"), body: _setBody(context));
  }

  List<VitaminModel> model = [
    VitaminModel("Banana com mamão", "005-banana"),
    VitaminModel("Banana com mamão e maça", "015-apple"),
    VitaminModel("Banana com mamão e pera", "014-pear"),
    VitaminModel("Abacate", "022-avocado"),
    VitaminModel("Melancia", "006-water-melon"),
    VitaminModel("Uva", "017-grapes"),
  ];

  ListView _setBody(BuildContext context) {
    return ListView.builder(
      itemCount: model.length,
      itemBuilder: (context, index) {
        return ItemView(model[index], pressedItem);
      },
    );
  }

  void pressedItem(BuildContext context) {
  }
}
