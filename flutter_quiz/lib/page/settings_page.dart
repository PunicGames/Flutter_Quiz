import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz/page/main_page.dart';
import '../data/global_variables.dart';
import 'package:url_launcher/url_launcher.dart';
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
                  colors: [themeColors[0], themeColors[1]],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
          ),
        ),
        backgroundColor: themeColors[2],
        body: buildStructure(context),
      );

  Widget buildStructure(context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Seccion 1 Opciones
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

            //Seccion 2 Paleta de Colores
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
                    onTap: () {
                      //lightTheme
                      darkMode = false;
                      themeColors = lightTheme;
                      setState(() {
                        themeColors = (darkMode ? darkTheme : lightTheme);
                      });
                      setPreferencesDarkMode();

                      if (!mute) {
                        player.play('Like_Sound.mp3');
                      }
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [lightTheme[0], lightTheme[1]],
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
                    onTap: () {
                      //darkTheme
                      darkMode = true;
                      themeColors = darkTheme;
                      setState(() {
                        themeColors = (darkMode ? darkTheme : lightTheme);
                      });
                      setPreferencesDarkMode();

                      if (!mute) {
                        player.play('Like_Sound.mp3');
                      }
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [darkTheme[0], darkTheme[1]],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //Seccion Social Media
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
                      size: MediaQuery.of(context).size.height * 0.08,
                    ),
                    iconSize: MediaQuery.of(context).size.height * 0.06,
                    onPressed: () {
                      launchUrl(Uri.parse(
                          "https://github.com/orgs/PunicGames/repositories"));
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                      size: MediaQuery.of(context).size.height * 0.08,
                    ),
                    iconSize: MediaQuery.of(context).size.height * 0.06,
                    onPressed: () {
                      launchUrl(Uri.parse("https://twitter.com/PunicGames"));
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.red,
                      size: MediaQuery.of(context).size.height * 0.08,
                    ),
                    iconSize: MediaQuery.of(context).size.height * 0.06,
                    onPressed: () {
                      launchUrl(Uri.parse(
                          "https://www.youtube.com/channel/UCV3q-cBOejtMXlt6WJ3WFFQ"));
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.itchIo,
                      color: Colors.orange,
                      size: MediaQuery.of(context).size.height * 0.08,
                    ),
                    iconSize: MediaQuery.of(context).size.height * 0.06,
                    onPressed: () {
                      launchUrl(Uri.parse("https://punicgames.itch.io/"));
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

  void setPreferencesDarkMode() async {
    preferences.setBool("DarkMode", darkMode);
    print(darkMode);
  }
}
