import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/global_variables.dart';
import '../classes/question.dart';

class QuestionNumbersWidget extends StatelessWidget {
  final List<Question> questions;
  final Question? question;
  final ValueChanged<int> onClickedNumber;

  const QuestionNumbersWidget({
    Key? key,
    required this.questions,
    required this.question,
    required this.onClickedNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double padding = 16;

    return Container(
      height: 50,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: padding),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => Container(width: padding),
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final isSelected = question == questions[index];
          final isAnswered = questions[index].isLocked;
          final isCorrect = questions[index].selectedOption.isCorrect;
          return buildNumber(
              index: index,
              isSelected: isSelected,
              isCorrect: isCorrect,
              isAnswered: isAnswered);
        },
      ),
    );
  }

  Widget buildNumber(
      {required int index,
      required bool isSelected,
      required bool isCorrect,
      required bool isAnswered}) {
    final correctionColor = isCorrect ? themeColors[4] : themeColors[5];
    final baseColor = isAnswered ? correctionColor : themeColors[2];
    final color = isSelected ? Colors.orange.shade300 : baseColor;

    return GestureDetector(
      onTap: () => onClickedNumber(index),
      child: CircleAvatar(
        radius: 21, //prueba para que tenga borde negro los circulos
        backgroundColor: Color.fromARGB(255, 58, 58, 58),
        child: CircleAvatar(
          backgroundColor: color,
          child: Text(
            '${index + 1}',
            style: TextStyle(
              color: themeColors[3],
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
