import 'package:flutter/material.dart';
import '../model/category.dart';
import '../page/category_page.dart';

class CategoryHeaderWidget extends StatelessWidget {
  final Category category;

  const CategoryHeaderWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryPage(category: category),
        )),
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
