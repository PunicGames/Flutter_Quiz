import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/global_variables.dart';

class SettingsPage extends StatefulWidget {
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  int colorID = 0;
  late SharedPreferences preferences;

  @override
  void initState() {
    super.initState();

    init();
  }

  Future init() async {
    preferences = await SharedPreferences.getInstance();
    int? colorID = preferences.getInt("colorID");
    if (colorID == null) return;

    setState(() {
      this.colorID = colorID;
      switch (colorID) {
        case 0:
          themeColors = themeColors0;
          break;
        case 1:
          themeColors = themeColors1;
          break;
        case 2:
          themeColors = themeColors2;
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        backgroundColor: Colors.white,
        body: buildStructure(),
      );

  PreferredSizeWidget buildAppBar(context) => AppBar(
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
      );

  Widget buildStructure() => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //texto de descripcion
            Text(
              "Theme Colors",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),

            //contenedor tema 1
            GestureDetector(
              onTap: () async {
                colorID = 0;
                preferences.setInt("colorID", colorID);
                setState(() => this.colorID = colorID);
              },
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
            SizedBox(height: 10),

            //contenedor tema 2
            GestureDetector(
              onTap: () async {
                colorID = 1;
                preferences.setInt("colorID", colorID);
                setState(() => this.colorID = colorID);
              },
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
            SizedBox(height: 10),

            //contenedor tema 3
            GestureDetector(
              onTap: () async {
                colorID = 2;
                preferences.setInt("colorID", colorID);
                setState(() => this.colorID = colorID);
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: themeColors2,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      );
}
