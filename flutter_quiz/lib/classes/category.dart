import 'question.dart';

class Category {
  final String categoryName;
  final List<Question> questions;
  final String imageUrl;
  final String videoUrl;
  final String description;
  int correctAnswer = 0;

  Category({
    required this.imageUrl,
    required this.questions,
    required this.categoryName,
    required this.videoUrl,
    required this.description,
  });
}
