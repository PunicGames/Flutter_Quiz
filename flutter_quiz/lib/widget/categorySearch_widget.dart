import 'package:flutter/material.dart';
import '../data/categories.dart';
import '../classes/category.dart';
import '../page/categoryViewer_page.dart';
import 'category_header_widget.dart';
import 'package:audioplayers/audioplayers.dart';
import '../data/global_variables.dart';

class CategorySearch extends SearchDelegate<Category?> {
  final List<Category> recentCategories = [];
  final player = AudioCache();

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      textTheme: TextTheme(
        headline6: TextStyle(
          color: themeColors[3],
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: themeColors[3],
      ),
      hintColor: themeColors[3],
      appBarTheme: AppBarTheme(
        color: themeColors[6],
        foregroundColor: themeColors[3],
      ),
    );
  }

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

  Widget buildSuggestionsSuccess(List<Category> suggestions) => Container(
        color: themeColors[2],
        child: ListView.builder(
          itemCount: suggestions.length,
          itemBuilder: (context, index) {
            final suggestion = suggestions[index];
            final queryText =
                suggestion.categoryName.substring(0, query.length);
            final remainingText =
                suggestion.categoryName.substring(query.length);

            return Container(
              //color: themeColors[6],
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(suggestion.imageUrl),
                ),
                //title: Text(suggestion.categoryName),
                title: RichText(
                  text: TextSpan(
                      text: queryText,
                      style: TextStyle(
                        color: themeColors[3],
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
                  if (!mute) {
                    player.play('Selector_Button_Sound_Forward.mp3');
                  }
                },
              ),
            );
          },
        ),
      );
}
