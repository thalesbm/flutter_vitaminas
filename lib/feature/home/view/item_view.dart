import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vitamin_of_the_day/feature/home/model/home_model.dart';

class HomeItemView extends StatelessWidget {
  final HomeModel _homeModel;
  final Function _pressedItem;

  HomeItemView(this._homeModel, this._pressedItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: new Container(
        decoration: _setBoxDecoration(),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              this._pressedItem(context);
            },
            child: Container(
              width: double.infinity,
              height: 120,
              child: Column(
                children: [
                  _setTitle(),
                  Spacer(),
                  _setDescription(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _setTitle() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 16),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: getText(_homeModel.title, 2, 18),
      ),
    );
  }

  Container _setDescription() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: getText(_homeModel.description, 1, 14),
      ),
    );
  }

  BoxDecoration _setBoxDecoration() {
    return BoxDecoration(
      color: _homeModel.color,
      borderRadius: BorderRadius.circular(4),
    );
  }

  Text getText(String text, double spacing, double size) {
    return Text(
      text,
      style: GoogleFonts.ubuntu(
        textStyle: TextStyle(
          letterSpacing: spacing,
          color: Colors.white,
          fontSize: size,
        ),
      ),
    );
  }
}
