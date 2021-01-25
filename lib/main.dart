import 'package:flutter/material.dart';
import 'package:world_time_app/screens/home.dart';
import 'package:world_time_app/screens/information.dart';
import 'package:world_time_app/screens/loading.dart';
import 'package:world_time_app/screens/plastic_tree.dart';
import 'package:world_time_app/screens/scan.dart';
import 'package:world_time_app/screens/tabs.dart';
import 'package:world_time_app/screens/the_plasti_score.dart';
import 'package:world_time_app/screens/your_foot_print.dart';
import 'package:world_time_app/screens/your_prouct.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      // Define the default brightness and colors.
      brightness: Brightness.dark,
      primaryColor: Color(0xffbaea7a),
      accentColor: Colors.lightGreen,

      // Define the default font family.
      // fontFamily: 'Georgia',

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    ),
    title: 'Naturise',
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/loading': (context) => Loading(),
      '/tabs': (context) => Tabs(),
      '/tab1': (context) => YourFootPrint(),
      '/tab2': (context) => MyHomePage(),
      '/tab3': (context) => Information(),
      '/scan': (context) => ScanImage(),
      '/yourproduct': (context) => YourProduct(),
      '/plastiscore': (context) => PlastiScore(),
      '/plastictree': (context) => PlasticTree(),
    },
  ));
}
