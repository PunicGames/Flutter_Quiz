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
  //PageController controller;
  //Question question;
  PageController controller = PageController();
  Question question = Question(
    text: '¿Por que Kratos es tan palido?',
    options: [
      Option(code: 'A', text: 'Es Gamer', isCorrect: false),
      Option(code: 'B', text: 'Es alergico a la luz del sol', isCorrect: false),
      Option(
          code: 'C',
          text:
              'Esta cubierto de pies a cabeza con las cenizas de su familia muerta',
          isCorrect: true),
      Option(
          code: 'D',
          text: 'Estuvo encerrado durante mucho tiempo',
          isCorrect: false),
    ],
    solution:
        'Esta cubierto de pies a cabeza con las cenizas de su familia muerta',
  );

  @override
  void initState() {
    super.initState();

    controller = PageController();
    question = widget.category.questions.first;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        //appBar: buildAppBar(context),
        appBar: AppBar(
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
        ),
        body: QuestionsWidget(
          category: widget.category,
          controller: controller,
          onChangedPage: (index) => nextQuestion(index: index),
          onClickedOption:
              selectOption, //cada vez que seleccionamos una opcion se ejecuta esta funcion
        ),
      );

//preguntar porque no puedo llamarlo directamente me da error.
  Widget buildAppBar(context) => AppBar(
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
    if (question.isLocked) {
      return;
    } else {
      setState(() {
        question.isLocked = true;
        question.selectedOption = option;
      });
    }
  }

  void nextQuestion({int? index, bool jump = false}) {
    //final nextPage = controller.page + 1; porque esto no funciona
    final nextPage = controller.page ?? 1;
    final indexPage = index ?? nextPage.toInt();
    //la ?? significa que si no tienes el valor de la izquierda, se establezca el de la derecha

    //asi conseguiria que siempre este en la pregunta correcta en la pagina correcta ya que el indice lo asegura
    setState(() {
      question = widget.category.questions[indexPage];
    });

    if (jump) {
      controller.jumpToPage(indexPage);
    }
  }
}
