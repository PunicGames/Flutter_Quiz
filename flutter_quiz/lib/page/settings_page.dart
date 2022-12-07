import 'package:flutter/material.dart';
import '../data/global_variables.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text('Settings'),
          centerTitle: true,

          //decoracion de la parte de arriba de la pagina
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: themeColors,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Text("settings"),
        ),
      );

  void setPreferencesMute() async {
    preferences.setBool("Mute", mute);
    print(mute);
  }
}
