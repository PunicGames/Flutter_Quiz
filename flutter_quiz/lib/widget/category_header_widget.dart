import 'package:flutter/material.dart';
import '../classes/category.dart';
import '../page/category_page.dart';
import '../page/categoryViewer_page.dart';

class CategoryHeaderWidget extends StatelessWidget {
  final Category category;

  const CategoryHeaderWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryViewerPage(category: category),
          ),
        ),
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
