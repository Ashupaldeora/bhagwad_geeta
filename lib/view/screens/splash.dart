import 'dart:async';

import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushNamed('/home');
      },
    );
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/splash.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
