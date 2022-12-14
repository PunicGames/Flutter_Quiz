import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/global_variables.dart';
import 'package:flutter_quiz/page/category_page.dart';
import 'package:flutter_quiz/page/main_page.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../classes/category.dart';

class ResultsPage extends StatelessWidget {
  final int success;
  final int totalQuestions;
  final Category categor;
  final confetti = ConfettiController();
  String freakometerResult = "placeholder";
  int confettiParticles = 0;
  final player = AudioCache();

  ResultsPage(
      {Key? key,
      required this.success,
      required this.totalQuestions,
      required this.categor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (success > categor.correctAnswer) {
      categor.correctAnswer = success;
    }
    setPreferencesCorrectAnswer();

    switch (success) {
      case 0:
        freakometerResult =
            "Have you even heard about ${categor.categoryName}?";
        break;
      case 1:
        freakometerResult = "Have you even played ${categor.categoryName}?";
        break;
      case 2:
        freakometerResult =
            "Having watched an stream of the game is not enough my friend...";
        break;
      case 3:
        freakometerResult =
            "A YouTube walkthrough video won´t do the work here";
        break;
      case 4:
        freakometerResult = "Maybe next time my friend";
        break;
      case 5:
        freakometerResult =
            "At least you bought a copy of the game and played it...";
        break;
      case 6:
        freakometerResult = "You kind of like ${categor.categoryName}";
        break;
      case 7:
        freakometerResult = "Okey we get it, you like ${categor.categoryName}";
        break;
      case 8:
        freakometerResult =
            "You have insight about ${categor.categoryName}. Too much time on the wiki maybe?";
        break;
      case 9:
        freakometerResult = "Do you even play other games?";
        break;
      case 10:
        freakometerResult =
            "Congratulations. You are a ${categor.categoryName} freak";
        break;
    }

    if (success <= 1) {
      // Sooo bad
      if (!mute) {
        player.play('Goofy_At_The_Game_Sound.mp3');
      }
    } else if (success <= 4) {
      // Bad
      if (!mute) {
        player.play('Bad_At_The_Game_Sound.mp3');
      }

      confettiParticles = 1;
    } else if (success <= 6) {
      confettiParticles = 5;
      // Nerd Sound
      if (!mute) {
        player.play('Nerd_At_The_Game_Sound.mp3');
      }
    } else if (success <= 9) {
      confettiParticles = 15;
      // Freak Sound
      if (!mute) {
        player.play('Freak_At_The_Game_Sound.mp3');
      }
    } else {
      confettiParticles = 30;
      // Master Sound
      if (!mute) {
        player.play('Master_At_The_Game_Sound.mp3');
      }
    }

    if (success > 4) confetti.play();
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        color: themeColors[2],
        child: ListView(
          padding:
              const EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 16),
          children: [
            buildStructure(context),
          ],
        ),
      ),
    );
  }

  Widget buildStructure(BuildContext context) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ConfettiWidget(
              emissionFrequency: 0.01,
              confettiController: confetti,
              shouldLoop: false,
              blastDirection: pi / 2,
              blastDirectionality: BlastDirectionality.explosive,
              numberOfParticles: confettiParticles,
            ),
            SfRadialGauge(
              enableLoadingAnimation: true,
              animationDuration: 2500,
              axes: <RadialAxis>[
                RadialAxis(
                  minorTickStyle: MinorTickStyle(
                    color: themeColors[3], //ticks
                  ),
                  majorTickStyle: MajorTickStyle(
                    color: themeColors[3], //ticks
                  ),
                  showTicks: true,
                  tickOffset: 0.00,
                  labelOffset: 0.1,
                  offsetUnit: GaugeSizeUnit.factor,
                  axisLabelStyle: GaugeTextStyle(
                    color: themeColors[3],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  radiusFactor: 0.95,
                  canScaleToFit: true,
                  axisLineStyle: AxisLineStyle(
                    thickness: 15,
                    cornerStyle: CornerStyle.bothFlat,
                    color: themeColors[3], //color de fondo de la curva
                  ),
                  startAngle: 160,
                  endAngle: 20,
                  minimum: 0,
                  maximum: 10,
                  interval: 1,
                  showLastLabel: true,
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      value: success.toDouble(),
                      needleColor: themeColors[3],
                      knobStyle: KnobStyle(
                        color: themeColors[3],
                      ),
                    ),
                    RangePointer(
                      value: success.toDouble(),
                      width: 0.1,
                      sizeUnit: GaugeSizeUnit.factor,
                      gradient: SweepGradient(colors: <Color>[
                        Colors.black,
                        Colors.red,
                        Colors.orange,
                        Colors.green,
                        Colors.blue
                      ], stops: <double>[
                        0.0,
                        0.25,
                        0.5,
                        0.75,
                        1.0
                      ]),
                    ),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        widget: Container(
                          child: Text(
                            "Score: ${success}/${totalQuestions}",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: themeColors[3],
                            ),
                          ),
                        ),
                        angle: 90,
                        positionFactor: 0.85),
                  ],
                ),
              ],
              title: GaugeTitle(
                text: "Freak 'O' Meter",
                textStyle: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: themeColors[3],
                ),
                borderWidth: 10,
              ),
            ),

            SizedBox(height: 80),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: themeColors[6],
                borderRadius: BorderRadius.circular(25),
              ),
              //no se determina el tamaño para que se adecue al flexible container
              child: Text(
                freakometerResult,
                style: TextStyle(
                  fontSize: 20,
                  color: themeColors[3],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 15),
            //boton de play quiz y estadisticas,
            //texto de sinopsis

            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => CategoryPage(category: categor),
                  ),
                );
                if (!mute) {
                  player.play('Selector_Button_Sound_Forward.mp3');
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2 - 16 * 1.5,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [themeColors[0], themeColors[1]],
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
          onPressed: (() {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => MainPage(),
              ),
            );
            if (!mute) {
              player.play('Selector_Button_Sound_Backwards.mp3');
            }
          }),
        ),
        title: const Text("Exit Quiz"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [themeColors[0], themeColors[1]],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
        ),
      );

  void setPreferencesCorrectAnswer() async {
    preferences.setInt(
        categor.categoryName + "_correctAnswer", categor.correctAnswer);
    print(categor.correctAnswer);
  }
}
