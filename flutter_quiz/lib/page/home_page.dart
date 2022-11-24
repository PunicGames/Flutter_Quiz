import 'package:flutter/material.dart';
import 'package:flutter_quiz/model/category.dart';
import 'package:flutter_quiz/page/category_page.dart';
import '../data/categories.dart';
import '../data/global_variables.dart';
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

class CategorySearch extends SearchDelegate<Category?> {
  final recentCategories = [
    categories[0],
    categories[4],
    categories[2],
  ];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            //esto basicamente hace que si hay algo escrito en el query lo borra
            //todo y si esta vacio, te vuelve a la pantalla de seleccion de quiz
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
              showSuggestions(context);
            }
          },
        )
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: categories
              .map((category) => CategoryHeaderWidget(category: category))
              .toList(),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentCategories
        : categories.where((category) {
            final categoryLower = category.categoryName.toLowerCase();
            final queryLower = query.toLowerCase();

            return categoryLower.startsWith(queryLower);
          }).toList();

    return buildSuggestionsSuccess(suggestions);
  }

  Widget buildSuggestionsSuccess(List<Category> suggestions) =>
      ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(suggestion.imageUrl),
            ),
            title: Text(suggestion.categoryName),
            onTap: () {
              query = suggestion.categoryName;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryPage(category: suggestion),
                ),
              );
            },
          );
        },
      );
}
