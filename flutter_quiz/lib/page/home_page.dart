import 'package:flutter/material.dart';
import '../data/categories.dart';
import '../data/global_variables.dart';
import '../widget/categorySearch_widget.dart';
import '../widget/category_header_widget.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    init();

    print("por aqui en home");
  }

  Future init() async {
    preferences = await SharedPreferences.getInstance();

    print("inicializado en home");
    if (preferences.getBool("DarkMode") != null) {
      darkMode = preferences.getBool("DarkMode")!;
      setState(() {
        themeColors = (darkMode ? darkTheme : lightTheme);
      });
      print(darkMode);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text('FreakOMeter'),
          centerTitle: true,

          //decoracion de la parte de arriba de la pagina
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [themeColors[0], themeColors[1]],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
          ),

          //boton de buscar
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: CategorySearch());

                // Play button sound
                final player = AudioCache();
                if (!mute) {
                  player.play('Selector_Button_Sound_Forward.mp3');
                }
              },
            )
          ],
        ),
        body: Container(
          color: themeColors[2],
          child: ListView(
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16),
            children: [
              buildCategories(context),
            ],
          ),
        ),
      );

  Widget buildCategories(context) => Container(
        //numero a tener en cuenta porque no es responsivo
        height: MediaQuery.of(context).size.height * 0.75,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //numero de quiz por columna
            childAspectRatio: 4 / 3, //aspectratio de cada quiz
            crossAxisSpacing: 10, //espacio entre las columnas
            mainAxisSpacing: 10, //espacio entre las filas
          ),
          children: categories
              .map((category) => CategoryHeaderWidget(category: category))
              .toList(),
        ),
      );
}
