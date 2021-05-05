import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vitamin_of_the_day/view/colors.dart';

class Header extends StatelessWidget {
  final String _tipText;
  final Function _pressedUpdateTip;
  final Function _pressedHeader;

  Header(this._tipText, this._pressedUpdateTip, this._pressedHeader);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white60,
        border: Border.all(
          color: HexColor(PaletteColors.BORDER_COLOR),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: IconButton(
                  onPressed: _pressedUpdateTip,
                  iconSize: 28.0,
                  icon: Icon(Icons.update_rounded),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: _pressedHeader,
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    _tipText,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
