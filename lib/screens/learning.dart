// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_learningapp/components/text.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/container.dart';
import '../components/textcontainer.dart';
import '../constants/constants.dart';

class LearningPage extends StatefulWidget {
  LearningPage({super.key});

  @override
  State<LearningPage> createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  bool remembers = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: ContainerCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(
              textswidget: 'Learnin App',
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/Contact-Image-01.jpg',
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Select Your Course Level',
              textAlign: TextAlign.start,
              style: TextStyle(
                letterSpacing: 2,
                color: kReusabaleColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Expanded(
                  child: Textcontainer(
                    Levels: 'Beginner',
                    Colors: Colors.deepPurple,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Textcontainer(
                    Levels: 'Middle',
                    Colors: Colors.deepPurple,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Textcontainer(
                    Levels: 'Expert',
                    Colors: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            Row(
              children: [
                Checkbox(
                    value: remembers,
                    onChanged: (value) {
                      setState(
                        () {
                          remembers = value!;
                        },
                      );
                    }),
                Text(
                  'Are You sure ?',
                  style: TextStyle(
                    color: kReusabaleColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            ButtonCard(
              Pressed: () {},
              text: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}
