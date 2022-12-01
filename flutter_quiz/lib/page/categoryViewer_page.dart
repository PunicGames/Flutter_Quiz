import 'package:flutter/material.dart';
import '../data/global_variables.dart';
import '../classes/category.dart';

class CategoryViewerPage extends StatefulWidget {
  final Category category;

  const CategoryViewerPage({Key? key, required this.category})
      : super(key: key);

  @override
  _CategoryViewerPageState createState() => _CategoryViewerPageState();
}

class _CategoryViewerPageState extends State<CategoryViewerPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: Center(
          child: Text(widget.category.categoryName),
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
