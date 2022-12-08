import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/global_variables.dart';
import '../classes/option.dart';
import '../classes/question.dart';
import '../utils.dart';

class OptionsWidget extends StatelessWidget {
  //Cada optionWidget tiene una pregunta
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        physics: BouncingScrollPhysics(),
        children: Utils.heightBetween(
          question.options
              .map((option) => buildOption(context, option))
              .toList(),
          height: 8, //distancia entre cada opcion de la pregunta
        ),
      );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);

    return GestureDetector(
      onTap: () {
        onClickedOption(option);
      }, //funcion que ejecuta al hacer click
      child: Container(
        //distancia del contenedor de la opcion a los bordes del boton
        padding: EdgeInsets.all(12),

        //aspectos visuales de la caja de cada opcion
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),

        child: Column(
          children: [
            //para que salga el texto de la opcion (llama al widget BuildAnswer)
            buildAnswer(option),
            //para que salga al acertar o fallar la respuesta de la opcion (llama al widget BuildSolution)
            buildSolution(question.selectedOption, option),
          ],
        ),
      ),
    );
  }

  Widget buildAnswer(Option option) {
    //print(option.code + ": " + option.text.length.toString());
    //var a = double.parse(option.text.length.toString());

    return Container(
      //no se determina el tamaño para que se adecue al flexible container
      child: Row(
        children: [
          //letra de la opcion
          Text(
            option.code,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: themeColors[3]),
          ),
          SizedBox(width: 12),
          //mensaje de la opcion
          Flexible(
            child: Text(
              option.text,
              style: TextStyle(fontSize: 20, color: themeColors[3]),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSolution(Option solution, Option answer) {
    if (solution == answer) {
      return Text(
        question.solution,
        style: TextStyle(
            fontSize: 16, fontStyle: FontStyle.italic, color: themeColors[3]),
      );
    } else {
      return Container();
    }
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;

    if (!isSelected) {
      //return Colors.grey.shade200; //color de las preguntas normales
      return themeColors[6]; //color de las preguntas normales
    } else {
      return option.isCorrect
          ? themeColors[4]
          : themeColors[5]; //color al acertar : color al fallar
    }
  }
}
