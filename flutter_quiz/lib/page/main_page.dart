import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/categories.dart';
import 'package:flutter_quiz/data/favorites.dart';
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
  @override
  void initState() {
    super.initState();

    init();

    print("por aqui");
  }

  Future init() async {
    preferences = await SharedPreferences.getInstance();
    print("inicializado");
    favorites = [];

    if (preferences.getBool("DarkMode") != null) {
      darkMode = preferences.getBool("DarkMode")!;
      setState(() {
        themeColors = (darkMode ? darkTheme : lightTheme);
      });
      print(darkMode);
    }

    if (preferences.getBool("Mute") != null) {
      mute = preferences.getBool("Mute")!;
    }

    for (int i = 0; i < categories.length; i++) {
      //establezco con persistencia si es favorito
      if (preferences.getBool(categories[i].categoryName + "_isFavorite") !=
          null) {
        categories[i].isFavorite =
            preferences.getBool(categories[i].categoryName + "_isFavorite")!;

        //meto en el array de favoritos si es favorito
        if (categories[i].isFavorite) favorites.add(categories[i]);
      }

      //establezco con persistencia el numero de correctAnswer
      if (preferences.getInt(categories[i].categoryName + "_correctAnswer") !=
          null) {
        categories[i].correctAnswer =
            preferences.getInt(categories[i].categoryName + "_correctAnswer")!;
      }

      /*debugeador
      if (preferences.getInt(categories[i].categoryName + "_correctAnswer") ==
          null) {
        print(categories[i].categoryName + "_correctAnswer" + ": es null");
      } else {
        print(categories[i].categoryName +
            "_correctAnswer" +
            ": NONONO es null, es: " +
            preferences
                .getInt(categories[i].categoryName + "_correctAnswer")
                .toString());
      }
      */
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

    return WillPopScope(
      onWillPop: () async {
        print("botonsito");
        return false;
      },
      child: Scaffold(
        body: screens[index],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.white),
          ),
          child: CurvedNavigationBar(
            key: navigationKey,
            color: themeColors[1],
            buttonBackgroundColor: themeColors[0],
            backgroundColor: themeColors[2],
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 300),
            height: (MediaQuery.of(context).size.height * 0.08 > 74
                ? 75
                : MediaQuery.of(context).size.height * 0.08),
            index: index,
            items: items,
            onTap: (index) => setState(() {
              this.index = index;
              indexPage = index;
              if (!mute) {
                player.play('Selector_Button_Sound_Forward.mp3');
              }
            }),
          ),
        ),
      ),
    );
  }
}
