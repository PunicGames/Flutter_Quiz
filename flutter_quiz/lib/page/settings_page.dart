import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../data/global_variables.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPage extends StatefulWidget {
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text('Settings'),
          centerTitle: true,

          //decoracion de la parte de arriba de la pagina
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: themeColors,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: buildStructure(context),
      );

  Widget buildStructure(context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Seccion 1
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //boton mute
                Column(
                  children: [
                    Text(
                      "Mute",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      textAlign: TextAlign.justify,
                    ),
                    IconButton(
                      icon: (mute
                          ? FaIcon(
                              FontAwesomeIcons.volumeXmark,
                            )
                          : FaIcon(
                              FontAwesomeIcons.volumeHigh,
                            )),
                      iconSize: MediaQuery.of(context).size.height * 0.1,
                      onPressed: () {
                        toggleMute();
                        setPreferencesMute();
                      },
                    ),
                  ],
                ),
              ],
            ),

            //Seccion 2
            SizedBox(height: 10),
            Divider(
              thickness: 2,
            ),
            SizedBox(height: 10),
            Text(
              "Theme Colors",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: themeColors0,
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: themeColors1,
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //Seccion 3
            SizedBox(height: 20),
            Divider(
              thickness: 2,
            ),
            SizedBox(height: 10),
            Text(
              "Check our social media",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.purple,
                    ),
                    iconSize: MediaQuery.of(context).size.height * 0.1,
                    onPressed: () {
                      print("github");
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                    iconSize: MediaQuery.of(context).size.height * 0.1,
                    onPressed: () {
                      print("twiter");
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.red,
                    ),
                    iconSize: MediaQuery.of(context).size.height * 0.1,
                    onPressed: () {
                      print("yutub");
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.pager,
                      color: Color.fromARGB(255, 31, 5, 35),
                    ),
                    iconSize: MediaQuery.of(context).size.height * 0.1,
                    onPressed: () {
                      print("page");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  void toggleMute() {
    setState(() {
      if (mute) {
        mute = false;
        if (!mute) {
          player.play('Dislike_Sound.mp3');
        }
      } else {
        mute = true;
        if (!mute) {
          player.play('Like_Sound.mp3');
        }
      }
      setPreferencesMute();
    });
  }

  void setPreferencesMute() async {
    preferences.setBool("Mute", mute);
    print(mute);
  }
}
