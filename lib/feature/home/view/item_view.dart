import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/feature/home/model/home_model.dart';
import 'package:google_fonts/google_fonts.dart';

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
              this._pressedItem();
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
        child: Text(
          _homeModel.title,
          style: GoogleFonts.ubuntu(
            textStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Container _setDescription() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          _homeModel.description,
          style: GoogleFonts.ubuntu(
            textStyle: TextStyle(
              letterSpacing: 1,
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _setBoxDecoration() {
    return BoxDecoration(
      color: _homeModel.color,
      borderRadius: BorderRadius.circular(4),
    );
  }
}
