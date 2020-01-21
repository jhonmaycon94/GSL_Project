import 'package:flutter/material.dart';
import 'package:sensori/pages/loginPage.dart';
import 'package:sensori/utils/sensoriTheme.dart';
import 'package:sensori/pages/registerPage.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(title: 'Sensori'),
    //home: RegisterPage(title: 'Sensori'),
    theme: sensoriTheme,
  ));
}
