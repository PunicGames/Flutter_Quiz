import 'package:flutter/material.dart';
import '../data/global_variables.dart';
import '../classes/category.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'category_page.dart';
import 'package:audioplayers/audioplayers.dart';

import 'main_page.dart';

class CategoryViewerPage extends StatefulWidget {
  final Category category;

  const CategoryViewerPage({Key? key, required this.category})
      : super(key: key);

  @override
  _CategoryViewerPageState createState() => _CategoryViewerPageState();
}

class _CategoryViewerPageState extends State<CategoryViewerPage> {
  late YoutubePlayerController controller;
  final player = AudioCache();

  @override
  void initState() {
    super.initState();

    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.category.videoUrl)!,
        flags: const YoutubePlayerFlags(
          //como empieza el video
          mute: false,
          loop: false,
          autoPlay: false,
        ));
  }

  @override
  void deactivate() {
    controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) => Scaffold(
          appBar: buildAppBar(context),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              player,
              buildStructure(),
            ],
          ),
        ),
      );

  PreferredSizeWidget buildAppBar(context) => AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: (() => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => MainPage(),
                ),
              )),
        ),
        title: Text(widget.category.categoryName),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: themeColors,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: (widget.category.isFavorite
                ? const Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
            color: Colors.white,
            onPressed: () {
              toggleFavorite();
              setPreferencesIsFavorite();
            },
          )
        ],
      );

  Widget buildStructure() => Container(
        padding: const EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //texto de sinopsis
            Text(
              "Description",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            //texto de la descripcion
            Text(
              widget.category.description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 2,
              color: Color.fromARGB(255, 70, 70, 70),
            ),
            SizedBox(height: 10),
            //boton de play quiz y estadisticas
            Row(
              children: [
                //boton de quiz
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) =>
                            CategoryPage(category: widget.category),
                      ),
                    );
                    // Sound when accesing the quiz from resume page.
                    final player = AudioCache();
                    player.play('Selector_Button_Sound_Forward.mp3');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 16 * 1.5,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: themeColors,
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Play Quiz",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16),
                //estadisticas del quiz
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width / 2 - 16 * 1.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Score: " +
                            widget.category.correctAnswer.toString() +
                            "/" +
                            10.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  void toggleFavorite() {
    print(widget.category.isFavorite);
    setState(() {
      if (widget.category.isFavorite) {
        widget.category.isFavorite = false;
        player.play('Dislike_Sound.mp3');
      } else {
        widget.category.isFavorite = true;
        player.play('Like_Sound.mp3');
      }
      setPreferencesIsFavorite();
    });
  }

  void setPreferencesIsFavorite() async {
    preferences.setBool(widget.category.categoryName + "_isFavorite",
        widget.category.isFavorite);
    print(widget.category.isFavorite);
  }
}
