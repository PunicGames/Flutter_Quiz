import 'package:flutter/material.dart';
import '../model/category.dart';
import '../model/option.dart';
import '../model/question.dart';
import '../widget/options_widget.dart';

class QuestionsWidget extends StatelessWidget {
  final Category category;
  final PageController controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<Option> onClickedOption;

  const QuestionsWidget({
    Key? key,
    required this.category,
    required this.controller,
    required this.onChangedPage,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
        onPageChanged: onChangedPage,
        controller: controller,
        itemCount: category.questions.length,
        itemBuilder: (context, index) {
          final question = category.questions[index];

          return buildQuestion(question: question);
        },
      );

  Widget buildQuestion({
    required Question question,
  }) =>
      Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Define el texto de arriba de la pagina (en nuestro caso la pregunta)
            const SizedBox(height: 0),
            Text(
              question.text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              //textAlign: TextAlign.justify,
            ),
            //Subtexto debajo de la pregunta
            SizedBox(height: 10),
            Text(
              'Escoge tu respuesta pulsado en ella',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
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
