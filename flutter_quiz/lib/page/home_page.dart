import 'package:flutter/material.dart';
import '../data/categories.dart';
import '../data/global_variables.dart';
import '../widget/categorySearch_widget.dart';
import '../widget/category_header_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Videogame Quiz'),
          centerTitle: true,
          //seccion de saludo de usuario
          // bottom: PreferredSize(
          //   preferredSize: Size.fromHeight(80),
          //   child: Container(
          //     padding: EdgeInsets.all(16),
          //     alignment: Alignment.centerLeft,
          //     child: buildWelcome(username),
          //   ),
          // ),

          //decoracion de la parte de arriba de la pagina
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: themeColors,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                final results =
                    showSearch(context: context, delegate: CategorySearch());
              },
            )
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            SizedBox(height: 8),
            buildCategories(context),
          ],
        ),
      );

  Widget buildCategories(context) => Container(
        //numero a tener en cuenta porque no es responsivo
        height: MediaQuery.of(context).size.height * 0.9,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: categories
              .map((category) => CategoryHeaderWidget(category: category))
              .toList(),
        ),
      );
}
