import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/global_variables.dart';
import '../classes/category.dart';
import '../classes/option.dart';
import '../classes/question.dart';
import '../widget/options_widget.dart';

class QuestionsWidget extends StatelessWidget {
  final Category category;
  final PageController? controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<Option> onClickedOption;
  final List<Question> questionsPool;

  const QuestionsWidget({
    Key? key,
    required this.category,
    required this.controller,
    required this.onChangedPage,
    required this.onClickedOption,
    required this.questionsPool,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
        onPageChanged: onChangedPage,
        controller: controller,
        itemCount: questionsPool.length,
        itemBuilder: (context, index) {
          final question = questionsPool[index];

          return buildQuestion(question: question);
        },
      );

  Widget buildQuestion({
    required Question question,
  }) =>
      Container(
        color: themeColors[2],
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Define el texto de arriba de la pagina (en nuestro caso la pregunta)
            const SizedBox(height: 0),
            Text(
              question.text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: themeColors[3],
              ),
              //textAlign: TextAlign.justify,
            ),
            //Subtexto debajo de la pregunta
            SizedBox(height: 10),
            Text(
              'Choose your answer',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 16,
                color: themeColors[3],
              ),
            ),
            SizedBox(height: 32),
            Expanded(
              child: OptionsWidget(
                question: question,
                onClickedOption: onClickedOption,
              ),
            ),
          ],
        ),
      );
}
