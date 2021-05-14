import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/common/view/toolbar.dart';
import 'package:vitamin_of_the_day/feature/detail/view/details_page.dart';
import 'package:vitamin_of_the_day/feature/search/model/vitamin_model.dart';
import 'package:vitamin_of_the_day/feature/search/view/item_view.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomToolbar("Vitaminas"), body: _setBody(context));
  }

  List<VitaminModel> _model = [
    VitaminModel("Banana com mamão", "005-banana"),
    VitaminModel("Banana com mamão e maça", "015-apple"),
    VitaminModel("Banana com mamão e pera", "014-pear"),
    VitaminModel("Abacate", "022-avocado"),
    VitaminModel("Melancia", "006-water-melon"),
    VitaminModel("Uva", "017-grapes"),
  ];

  Column _setBody(BuildContext context) {
    return Column(
      children: [
        _getTextField(),
        Expanded(child: _getListView()),
      ],
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

  ListView _getListView() {
    return ListView.builder(
      itemCount: _model.length,
      itemBuilder: (context, index) {
        return ItemView(_model[index], pressedItem);
      },
    );
  }

  void pressedItem(BuildContext context, VitaminModel model) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return DetailsPage(model);
    }));
  }
}