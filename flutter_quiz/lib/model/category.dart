import 'question.dart';

class Category {
  final String categoryName;
  final List<Question> questions;
  final String imageUrl;

  Category({
    required this.imageUrl,
    required this.questions,
    required this.categoryName,
  });
}
