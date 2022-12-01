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
            children: [
              player,
              SizedBox(height: 16),
              Text(widget.category.description),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        CategoryPage(category: widget.category),
                  ),
                ),
                child: Container(
                  height: 40,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
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
}
