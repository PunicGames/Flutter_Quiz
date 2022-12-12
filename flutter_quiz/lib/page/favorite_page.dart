import 'package:flutter/material.dart';
import 'package:flutter_quiz/page/main_page.dart';
import 'package:flutter_quiz/widget/categorySearchFavorite_widget.dart';
import '../data/favorites.dart';
import '../data/global_variables.dart';
import '../widget/category_header_widget.dart';
import 'package:audioplayers/audioplayers.dart';

class FavoritePage extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: onWillPop,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Text('My favourites'),
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
                showSearch(
                    context: context, delegate: CategorySearchFavorite());
                // Play button sound
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
              //SizedBox(height: 8),
              buildCategories(context),
            ],
          ),
          body: Container(
            color: themeColors[2],
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: [
                //SizedBox(height: 8),
                buildCategories(context),
              ],
            ),
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
          children: favorites
              .map((category) => CategoryHeaderWidget(category: category))
              .toList(),
        ),
      );
}
