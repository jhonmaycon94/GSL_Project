import 'package:flutter/material.dart';
import 'package:sensori/pages/loginPage.dart';
import 'package:sensori/pages/registerPage.dart';
import 'package:sensori/utils/sensoriTheme.dart';
import 'package:sensori/pages/gamesPage.dart';
import 'package:sensori/pages/trophyRoomPage.dart';
import 'package:sensori/pages/learningTypePage.dart';
import 'package:sensori/pages/equationPuzzlePage.dart';
import 'package:sensori/pages/mathGamesPage.dart';


void main() {
  runApp(MaterialApp(
//    home: LoginPage(title: ""),
//    home: RegisterPage(title: "",),
   home: GamesPage(title: "Trophy Room"),
//    home: MathGamesPage(title: "Math Games",),
//      home: LearningTypePage(title: "",),
    theme: sensoriTheme,
  ));
}
