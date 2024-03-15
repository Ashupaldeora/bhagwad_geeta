import 'package:bhagwad_geeta/view/screens/adhyay.dart';
import 'package:bhagwad_geeta/view/screens/geetaArti.dart';
import 'package:bhagwad_geeta/view/screens/geetaMathatmay.dart';
import 'package:bhagwad_geeta/view/screens/geetaSaar.dart';
import 'package:bhagwad_geeta/view/screens/homescreen.dart';
import 'package:bhagwad_geeta/view/screens/shlokascreen.dart';
import 'package:bhagwad_geeta/view/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => splashscreen(),
        '/home': (context) => homescreen(),
        '/adhyay': (context) => adhyayscreen(),
        '/shlok': (context) => shlokascreen(),
        '/saar': (context) => geetasaar(),
        '/mahatmay': (context) => geetaMahatmay(),
        '/aarti': (context) => geetaArti(),
      },
    );
  }
}
