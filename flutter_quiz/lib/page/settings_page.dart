import 'package:flutter/material.dart';
import '../data/global_variables.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPage extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Seccion 1
            Row(
              children: [
                //boton mute
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Mute",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
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
                          print("mute");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //Seccion 2
            SizedBox(height: 10),
            Divider(
              thickness: 2,
            ),
            Text(
              "Theme Colors",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
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
            SizedBox(height: 10),
            Divider(
              thickness: 2,
            ),
            Text(
              "Check our social media",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.justify,
            ),
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

  void setPreferencesMute() async {
    preferences.setBool("Mute", mute);
    print(mute);
  }
}
