import 'package:flutter/material.dart';
import 'package:sensori/utils/sensoriTheme.dart';
import 'package:sensori/pages/gamesPage.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
   home: GamesPage(title: "Games"),
    theme: sensoriTheme,
  ));
}
