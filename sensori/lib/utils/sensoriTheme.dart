import 'package:flutter/material.dart';

final ThemeData sensoriTheme = new ThemeData(
      primaryColor: Colors.purple,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.purple,
        textTheme: ButtonTextTheme.primary
      ),
      textTheme: TextTheme(
        title: TextStyle(
          fontFamily: 'Orbitron',
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        body1: TextStyle(
          fontFamily: 'SeymourOne',
          fontWeight: FontWeight.bold,
        ),
        
        )
    );

