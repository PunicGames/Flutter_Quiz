import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/global_variables.dart';
import 'package:flutter_quiz/page/categoryViewer_page.dart';
import 'package:flutter_quiz/page/category_page.dart';
import 'package:flutter_quiz/page/home_page.dart';
import 'package:flutter_quiz/page/main_page.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../classes/category.dart';

class ResultsPage extends StatelessWidget {
  final int success;
  final int totalQuestions;
  final Category categor;
  final confetti = ConfettiController();
  ResultsPage(
      {Key? key,
      required this.success,
      required this.totalQuestions,
      required this.categor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    categor.correctAnswer = success;
    confetti.play();
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
            ConfettiWidget(
              confettiController: confetti,
              shouldLoop: false,
              blastDirection: pi / 2,
              numberOfParticles: 30,
            ),
            SfRadialGauge(
              enableLoadingAnimation: true,
              animationDuration: 2500,
              axes: <RadialAxis>[
                RadialAxis(
                  radiusFactor: 0.95,
                  canScaleToFit: true,
                  axisLineStyle: AxisLineStyle(
                      thickness: 10, cornerStyle: CornerStyle.bothCurve),
                  startAngle: 160,
                  endAngle: 20,
                  minimum: 0,
                  maximum: 10,
                  showLastLabel: true,
                  pointers: <GaugePointer>[
                    NeedlePointer(value: success.toDouble()),
                    RangePointer(
                      value: success.toDouble(),
                      width: 0.07,
                      sizeUnit: GaugeSizeUnit.factor,
                      gradient: SweepGradient(colors: <MaterialColor>[
                        themeColors.first,
                        themeColors.last
                      ], stops: <double>[
                        0.25,
                        0.75
                      ]),
                    )
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
                )
              ],
              title: GaugeTitle(
                text: 'Freakometer',
                textStyle:
                    TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                borderWidth: 10,
              ),
            ),

            SizedBox(height: 100),
            //boton de play quiz y estadisticas,
            //texto de sinopsis
            GestureDetector(
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => CategoryPage(category: categor),
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
                      "Retry",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
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