import 'package:flutter/material.dart';
import 'package:flutter_quiz/widget/categorySearchFavorite_widget.dart';
import '../data/favorites.dart';
import '../data/global_variables.dart';
import '../widget/category_header_widget.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text('Favorite Quiz'),
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

          //boton de buscar
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                    context: context, delegate: CategorySearchFavorite());
              },
            )
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            //SizedBox(height: 8),
            buildCategories(context),
          ],
        ),
      );

  Widget buildCategories(context) => Container(
        //numero a tener en cuenta porque no es responsivo
        height: MediaQuery.of(context).size.height * 0.8,
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
