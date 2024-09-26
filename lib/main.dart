// ignore_for_file: prefer_const_constructors

import 'package:e_learningapp/screens/homepage.dart';
import 'package:e_learningapp/screens/learning.dart';
import 'package:e_learningapp/screens/login.dart';
import 'package:e_learningapp/screens/welcomingpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LogInPage(),
        '/learning': (context) => LearningPage(),
        '/welcome': (context) => WelcomePage(),
      },
    );
  }
}
