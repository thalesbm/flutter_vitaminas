import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String _questionText;
  final Function _pressedUpdate;

  Header(this._questionText, this._pressedUpdate);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white60,
        border: Border.all(
          color: Colors.black87,
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
                  onPressed: _pressedUpdate,
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
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  "Vitamina de banana com mamão",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
