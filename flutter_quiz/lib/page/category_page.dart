import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_quiz/page/results_page.dart';
import '../data/global_variables.dart';
import '../classes/category.dart';
import '../classes/option.dart';
import '../classes/question.dart';
import '../widget/questions_numbers_widget.dart';
import '../widget/questions_widget.dart';
import 'package:audioplayers/audioplayers.dart';

class CategoryPage extends StatefulWidget {
  final Category category;

  const CategoryPage({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  //hay alguna manera de no inicializar aqui estas variables?
  final TOTAL_QUESTIONS = 10;
  PageController? controller;
  Question? question;
  List<Question> questionsPool = List.empty(growable: true);
  var rng = Random();
  var answeredQuestions = 0;
  var correctAnswers = 0;
  final player = AudioCache();

  @override
  void initState() {
    super.initState();
    controller = PageController();
    //Cloning not referencing !!!
    List<Question> auxList = List<Question>.from(widget.category.questions);
    for (int i = 0; i < TOTAL_QUESTIONS; i++) {
      Question q = auxList.removeAt(rng.nextInt(auxList.length));
      questionsPool.add(
          Question(text: q.text, options: q.options, solution: q.solution));
    }
    //question = widget.category.questions.first;
    question = questionsPool.first;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: QuestionsWidget(
          category: widget.category,
          controller: controller,
          onChangedPage: (index) => nextQuestion(index: index),
          onClickedOption: selectOption,
          questionsPool: questionsPool,
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
        actions: [
          (answeredQuestions == TOTAL_QUESTIONS
              ? FloatingActionButton.extended(
                  label: const Text(
                    "Results",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      letterSpacing: -0.2,
                    ),
                  ),
                  icon: Icon(Icons.add_chart_rounded),
                  backgroundColor: Color.fromARGB(0, 255, 255, 255),
                  elevation: 0,
                  highlightElevation: 0,
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(
                        success: correctAnswers,
                        totalQuestions: TOTAL_QUESTIONS,
                        categor: widget.category,
                      ),
                    ),
                  ),
                )
              : Container()),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: QuestionNumbersWidget(
              questions: questionsPool,
              question: question,
              onClickedNumber: (index) =>
                  nextQuestion(index: index, jump: true),
            ),
          ),
        ),
      );

  void selectOption(Option option) {
    //al seleccionar una opcion, activamos el booleano isLocked para dejar
    //claro que en esa ristra de opciones ya se ha seleccionado una y por
    //tanto no se puede volver a seleccionar otra
    if (question!.isLocked) {
      return;
    } else {
      setState(() {
        question?.isLocked = true;
        question?.selectedOption = option;
        answeredQuestions++;
        if (question?.selectedOption.isCorrect == true) correctAnswers++;
        // Play button sound
        if (option.isCorrect) {
          player.play('Selector_Button_Sound_Forward.mp3');
        } else {
          player.play('Selector_Button_Sound_Backwards.mp3');
        }
      });
    }
  }

  void nextQuestion({int? index, bool jump = false}) {
    final nextPage = controller?.page ?? 1;
    //esto sirve basicamente para cuando pulsamos en los circulos para ir
    //directamente a un numero de pregunta en cocnreto, momento en el que
    //el indice no se establece ya que no estamos arrastrando y por tanto
    //no aumenta
    final indexPage = index ?? nextPage.toInt();
    setState(() {
      //question = widget.category.questions[indexPage];
      question = questionsPool[indexPage];

      // Sound
      if (indexPage > nextPage.toInt()) {
        player.play('Turning_Page_Sound_Forward.mp3');
      } else if (indexPage < nextPage.toInt()) {
        player.play('Turning_Page_Sound_Backwards.mp3');
      }
    });

    //de esta forma habilitamos que pueda saltar de una pregunta a otra
    //directamente
    if (jump) {
      controller?.jumpToPage(indexPage);
    }
  }
}
