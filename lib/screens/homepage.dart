// ignore_for_file: prefer_const_constructors

import 'package:e_learningapp/constants/constants.dart';
import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/container.dart';
import '../components/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScafold,
      appBar: AppBar(
        backgroundColor: kScafold,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/splash');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kPrimary,
          ),
        ),
        elevation: 4,
      ),
      body: ContainerCard(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset('assets/Pic1.png'),
            text(
              textswidget: 'Online Learning Platform',
              fontSized: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                textAlign: TextAlign.center,
                'The e-Learning app offers a seamless, interactive learning experience with video lessons, quizzes, and assessments.',
                style: TextStyle(
                  color: kPrimary,
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonCard(
              text: 'Start Learning home ',
              Pressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
