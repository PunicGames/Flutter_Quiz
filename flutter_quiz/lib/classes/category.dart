import 'question.dart';

class Category {
  final String categoryName;
  final List<Question> questions;
  final String imageUrl;
  final String videoUrl;
  final String description;
  int correctAnswer;
  bool isFavorite;

  Category({
    required this.imageUrl,
    required this.questions,
    required this.categoryName,
    required this.videoUrl,
    required this.description,
    required this.correctAnswer,
    required this.isFavorite,
  });
}
