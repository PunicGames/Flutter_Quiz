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
  Colors.green, //color de las preguntas correctas
  Colors.red, //color de las preguntas incorrectas
  Colors.grey.shade200, //color de fondo de las preguntas
];

final darkTheme = [
  Color.fromARGB(255, 0, 0, 0), //degradado derecha
  Color.fromARGB(255, 18, 18, 18), //degradado izquierda
  Color.fromARGB(255, 41, 41, 41), //color fondo
  Color.fromARGB(255, 255, 255, 255), //color letras
  Colors.green, //color de las preguntas correctas
  Colors.red, //color de las preguntas incorrectas
  Color.fromARGB(255, 25, 25, 25), //color de fondo de las preguntas
];
