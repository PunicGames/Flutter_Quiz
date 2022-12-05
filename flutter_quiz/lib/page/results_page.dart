import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/global_variables.dart';
import 'package:flutter_quiz/page/categoryViewer_page.dart';
import 'package:flutter_quiz/page/home_page.dart';
import 'package:flutter_quiz/page/main_page.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../classes/category.dart';

class ResultsPage extends StatelessWidget {
  final int success;
  final int totalQuestions;
  final Category categor;
  const ResultsPage(
      {Key? key,
      required this.success,
      required this.totalQuestions,
      required this.categor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    categor.correctAnswer = success;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          buildStructure(context),
        ],
      ),
    );
  }

  Widget buildStructure(BuildContext context) => Container(
        padding: const EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SfRadialGauge(
              enableLoadingAnimation: true,
              animationDuration: 2500,
              axes: <RadialAxis>[
                RadialAxis(
                    startAngle: 160,
                    endAngle: 20,
                    minimum: 0,
                    maximum: 10,
                    showLastLabel: true,
                    pointers: <GaugePointer>[
                      NeedlePointer(value: success.toDouble())
                    ],
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                          widget: Container(
                              child: Text("Score: ${success}/${totalQuestions}",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold))),
                          angle: 90,
                          positionFactor: 0.85)
                    ],
                    ranges: <GaugeRange>[
                      GaugeRange(
                          startValue: 8,
                          endValue: 10,
                          color: Colors.blue,
                          startWidth: 10,
                          endWidth: 10),
                      GaugeRange(
                          startValue: 6,
                          endValue: 8,
                          color: Colors.green,
                          startWidth: 10,
                          endWidth: 10),
                      GaugeRange(
                          startValue: 4,
                          endValue: 6,
                          color: Colors.orange,
                          startWidth: 10,
                          endWidth: 10),
                      GaugeRange(
                          startValue: 2,
                          endValue: 4,
                          color: Colors.red,
                          startWidth: 10,
                          endWidth: 10),
                      GaugeRange(
                          startValue: 0,
                          endValue: 2,
                          color: Colors.black,
                          startWidth: 10,
                          endWidth: 10)
                    ])
              ],
              title: GaugeTitle(
                text: 'Freakometer',
                textStyle:
                    TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                borderWidth: 10,
              ),
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 2,
              color: Color.fromARGB(255, 70, 70, 70),
            ),
            SizedBox(height: 15),
            //boton de play quiz y estadisticas,
            //texto de sinopsis
            Text(
              "Placeholder",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              textAlign: TextAlign.justify,
            ),
            //texto de la descripcion
          ],
        ),
      );

  PreferredSizeWidget buildAppBar(context) => AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(
            color: Colors.white,
            onPressed: (() => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ))),
        title: const Text("Exit Quiz"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: themeColors,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
        ),
      );
}
/*
Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 16 * 1.5,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(0, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: themeColors.first),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${success}/${totalQuestions}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: themeColors.last),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 2,
              color: Color.fromARGB(255, 70, 70, 70),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width / 2 - 16 * 1.5,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: themeColors,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Go fuck yourself",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            )*/