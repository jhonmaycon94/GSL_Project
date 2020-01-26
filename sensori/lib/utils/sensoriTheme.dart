import 'package:flutter/material.dart';

final ThemeData sensoriTheme = new ThemeData(
      primaryColor: Color.fromARGB(255, 120,19,235),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.purple,
        textTheme: ButtonTextTheme.primary
      ),
      textTheme: TextTheme(
        title: TextStyle(
          fontFamily: 'Orbitron',
          fontWeight: FontWeight.w900,
          color: Colors.white
        ),
        body1: TextStyle(
          color: Colors.white,
          fontFamily: 'SeymourOne',
          fontWeight: FontWeight.bold,
        ),
        body2: TextStyle(
          fontFamily: 'SeymourOne',
          fontWeight: FontWeight.bold,
        ),
        button: TextStyle(
          fontFamily: 'SeymourOne',
          fontWeight: FontWeight.bold,
        ),
        overline:  TextStyle(
          fontFamily: 'Orbitron',
          fontWeight: FontWeight.w900,
        ) 
        ), 
        );

