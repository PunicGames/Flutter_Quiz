import 'package:flutter/material.dart';
import '../data/global_variables.dart';
import '../model/category.dart';
import '../model/option.dart';
import '../model/question.dart';
import '../widget/questions_numbers_widget.dart';
import '../widget/questions_widget.dart';

class CategoryPage extends StatefulWidget {
  final Category category;

  const CategoryPage({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  //hay alguna manera de no inicializar aqui estas variables?
  PageController? controller;
  Question? question;

  @override
  void initState() {
    super.initState();
    controller = PageController();
    question = widget.category.questions.first;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: QuestionsWidget(
          category: widget.category,
          controller: controller,
          onChangedPage: (index) => nextQuestion(index: index),
          onClickedOption: selectOption,
        ),
      );

  PreferredSizeWidget buildAppBar(context) => AppBar(
        title: Text(widget.category.categoryName),
        actions: [
          Icon(Icons.filter_alt_outlined),
          SizedBox(width: 16),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: themeColors,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: QuestionNumbersWidget(
              questions: widget.category.questions,
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
      question = widget.category.questions[indexPage];
    });

    //de esta forma habilitamos que pueda saltar de una pregunta a otra
    //directamente
    if (jump) {
      controller?.jumpToPage(indexPage);
    }
  }
}
