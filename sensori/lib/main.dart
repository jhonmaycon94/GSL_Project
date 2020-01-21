import 'package:flutter/material.dart';
import 'package:sensori/pages/loginPage.dart';
import 'package:sensori/utils/sensoriTheme.dart';
import 'package:sensori/pages/gamesPage.dart';

void main() {
  runApp(MaterialApp(
    home: GamesPage(title: 'Sensori'),
    theme: sensoriTheme,
  ));
}
