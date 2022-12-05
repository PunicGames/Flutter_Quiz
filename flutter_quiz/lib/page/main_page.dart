import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/categories.dart';
import 'package:flutter_quiz/data/global_variables.dart';
import 'package:flutter_quiz/page/home_page.dart';
import 'package:flutter_quiz/page/settings_page.dart';
import 'package:flutter_quiz/page/favorite_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late SharedPreferences preferences;

  @override
  void initState() {
    super.initState();

    init();

    print("por aqui");
  }

  Future init() async {
    preferences = await SharedPreferences.getInstance();
    print("inicializado");

    for (int i = 0; i < categories.length; i++) {
      if (preferences.getBool(categories[i].categoryName + "_isFavorite") ==
          null) {
        print(categories[i].categoryName + "_isFavorite" + ": es null");
      } else {
        print(categories[i].categoryName + "_isFavorite" + ": no es null");
      }
      categories[i].isFavorite = (preferences.getBool("_isFavorite") == null
          ? false
          : preferences.getBool("_isFavorite")!);
    }
  }

  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = indexPage;
  final player = AudioCache();

  final screens = [
    FavoritePage(),
    HomePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.favorite, size: 30),
      Icon(Icons.home, size: 30),
      Icon(Icons.settings, size: 30),
    ];

    /*
    for (int i = 0; i < categories.length; i++) {
      if (preferences.getBool(categories[i].categoryName + "_isFavorite") ==
          null) {
        print(categories[i].categoryName + "_isFavorite" + ": es null");
      } else {
        print(categories[i].categoryName + "_isFavorite" + ": no es null");
      }
      categories[i].isFavorite = (preferences.getBool("_isFavorite") == null
          ? false
          : preferences.getBool("_isFavorite")!);
    }
    */
    print("for");
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
          height: MediaQuery.of(context).size.height * 0.08,
          index: index,
          items: items,
          onTap: (index) => setState(() {
            this.index = index;
            indexPage = index;
            player.play('Selector_Button_Sound_Forward.mp3');
          }),
        ),
      ),
    );
  }
}
