import 'package:flutter/material.dart';
import 'package:sensori/pages/loginPage.dart';
import 'package:sensori/utils/sensoriTheme.dart';
import 'package:sensori/pages/gamesPage.dart';
import 'package:sensori/pages/trophyRoomPage.dart';


void main() {
  runApp(MaterialApp(
    home: TrophyRoomPage(title: "Trophy Room",),
    theme: sensoriTheme,
  ));
}
