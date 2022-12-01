import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/global_variables.dart';
import 'package:flutter_quiz/page/home_page.dart';
import 'package:flutter_quiz/page/settings_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  final screens = [
    HomePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.settings, size: 30),
    ];

    return Scaffold(
      //extendBody: true,
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          key: navigationKey,
          color: themeColors[1],
          buttonBackgroundColor: themeColors[0],
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          height: 60,
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
