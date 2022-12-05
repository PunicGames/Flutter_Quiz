import 'package:flutter/material.dart';
import '../data/favorites.dart';
import '../classes/category.dart';
import '../page/categoryViewer_page.dart';
import 'category_header_widget.dart';
import 'package:audioplayers/audioplayers.dart';

class CategorySearchFavorite extends SearchDelegate<Category?> {
  final List<Category> recentCategories = [];
  final player = AudioCache();

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
          children: favorites
              .map((category) => CategoryHeaderWidget(category: category))
              .toList(),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentCategories
        : favorites.where((category) {
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
          final queryText = suggestion.categoryName.substring(0, query.length);
          final remainingText = suggestion.categoryName.substring(query.length);

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(suggestion.imageUrl),
            ),
            //title: Text(suggestion.categoryName),
            title: RichText(
              text: TextSpan(
                  text: queryText,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                      text: remainingText,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ]),
            ),
            onTap: () {
              query = suggestion.categoryName;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryViewerPage(category: suggestion),
                ),
              );
              player.play('Selector_Button_Sound_Forward.mp3');
            },
          );
        },
      );
}
