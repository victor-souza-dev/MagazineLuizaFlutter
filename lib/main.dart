import 'package:flutter/material.dart';
import 'package:n1/screens/home/home.dart';
import 'package:n1/style.dart';

void main() {
  runApp(MaterialApp(
    title: "Magazine Luiza",
    home: Home(),
    theme: ThemeData(
      primarySwatch: blueTheme,
    ),
    debugShowCheckedModeBanner: false,
  ));
}
