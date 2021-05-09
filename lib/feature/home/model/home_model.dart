import 'package:flutter/material.dart';

class HomeModel {
  String title;
  String description;
  Color color;

  HomeModel(String title, String description, Color color) {
    this.color = color;
    this.title = title;
    this.description = description;
  }
}
