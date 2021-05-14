import 'package:flutter/material.dart';
import 'package:vitamin_of_the_day/feature/home/home_page.dart';

void main() {
  runApp(VitaminApp());
}

class VitaminApp extends StatefulWidget {
  @override
  _VitaminAppState createState() => _VitaminAppState();
}

class _VitaminAppState extends State<VitaminApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
