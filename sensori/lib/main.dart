import 'package:flutter/material.dart';
import 'package:sensori/pages/loginPage.dart';
import 'package:sensori/utils/sensoriTheme.dart';
import 'package:sensori/pages/gamesPage.dart';
import 'package:sensori/pages/trophyRoomPage.dart';
import 'package:sensori/pages/learningTypePage.dart';
import 'package:sensori/pages/equationPuzzlePage.dart';


void main() {
  runApp(MaterialApp(
//    home: GamesPage(title: "Trophy Room",),
    home: EquationPuzzlePage(title: "LearningType",),
    theme: sensoriTheme,
  ));
}
