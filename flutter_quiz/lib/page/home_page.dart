import 'package:flutter/material.dart';
import '../data/categories.dart';
import '../data/global_variables.dart';
import '../widget/category_header_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          elevation: 0,
          title: Text('Videogame Quiz'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: buildWelcome(username),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: themeColors,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 12),
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            SizedBox(height: 8),
            buildCategories(),
          ],
        ),
      );

  Widget buildWelcome(String username) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            username,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      );

  Widget buildCategories() => Container(
        //numero a tener en cuenta porque no es responsivo
        height: 450,
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