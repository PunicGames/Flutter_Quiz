import 'package:flutter/material.dart';
import '../data/global_variables.dart';
import '../classes/category.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'category_page.dart';

class CategoryViewerPage extends StatefulWidget {
  final Category category;

  const CategoryViewerPage({Key? key, required this.category})
      : super(key: key);

  @override
  _CategoryViewerPageState createState() => _CategoryViewerPageState();
}

class _CategoryViewerPageState extends State<CategoryViewerPage> {
  late YoutubePlayerController controller;

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
      );

  Widget buildStructure() => Container(
        padding: const EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //texto de sinopsis
            Text(
              "Sinopsis",
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
            //boton de play quiz
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CategoryPage(category: widget.category),
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width / 2 - 16 * 2,
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
          ],
        ),
      );
}
