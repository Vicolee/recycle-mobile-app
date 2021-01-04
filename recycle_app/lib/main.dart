import 'package:flutter/material.dart';
import 'package:recycle_app/home.dart';

void main() {
  runApp(MaterialApp(
      title: 'Navigation Basics',
      home: Home(),
      theme: ThemeData(
          accentColor: Color.fromRGBO(181, 101, 118, 1),
          highlightColor: Color.fromRGBO(115, 168, 232, 1),
          textSelectionColor: Color.fromRGBO(10, 10, 82, 1),
          primaryColor: Color.fromRGBO(39, 76, 119, 1),
          focusColor: Color.fromRGBO(121, 180, 115, 1),
          backgroundColor: Color.fromRGBO(201, 219, 234, 1))));
}
