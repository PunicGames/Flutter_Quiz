import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../classes/category.dart';
import '../page/category_page.dart';
import '../page/categoryViewer_page.dart';
import '../data/global_variables.dart';

class CategoryHeaderWidget extends StatelessWidget {
  final Category category;

  const CategoryHeaderWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CategoryViewerPage(category: category),
            ),
          );

          // Sound when selecting game from carousel
          final player = AudioCache();
          if (!mute) {
            player.play('Selector_Button_Sound_Forward.mp3');
          }
        },
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.imageUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      );
}
