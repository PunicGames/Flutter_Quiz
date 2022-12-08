import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences preferences;

bool mute = false;
bool darkMode = false;

int indexPage = 1;

var themeColors = (darkMode ? darkTheme : lightTheme);

final lightTheme = [
  Color.fromARGB(255, 62, 0, 97), //degradado derecha
  Color.fromARGB(255, 231, 15, 88), //degradado izquierda
  Color.fromARGB(255, 255, 255, 255), //color fondo
  Color.fromARGB(255, 0, 0, 0), //color letras
];

final darkTheme = [
  Color.fromARGB(255, 26, 26, 26), //degradado derecha
  Color.fromARGB(255, 145, 145, 145), //degradado izquierda
  Color.fromARGB(255, 57, 57, 57), //color fondo
  Color.fromARGB(255, 255, 255, 255), //color letras
];
