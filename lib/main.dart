// ignore_for_file: prefer_const_constructors

import 'package:e_learningapp/screens/firstpage.dart';
import 'package:e_learningapp/screens/homepage.dart';
import 'package:e_learningapp/screens/learning.dart';
import 'package:e_learningapp/screens/login.dart';
import 'package:e_learningapp/screens/welcomingpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LogInPage(),
        '/learning': (context) => LearningPage(),
        '/welcome': (context) => WelcomePage(),
      },
    );
  }
}
