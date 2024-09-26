// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_learningapp/components/text.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/container.dart';
import '../components/textcontainer.dart';
import '../constants/constants.dart';

class LearningPage extends StatefulWidget {
  const LearningPage({super.key});

  @override
  State<LearningPage> createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  bool remembers = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScafold,
      appBar: AppBar(
        backgroundColor: kScafold,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kPrimary,
          ),
        ),
        // title: Text('data'),
        elevation: 4,
      ),
      body: ContainerCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: text(
                textswidget: 'Learnin App',
                fontSized: 28,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/Pic3.png',
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Select Your Course Level',
              // textAlign: TextAlign.start,
              style: TextStyle(
                letterSpacing: 2,
                color: kPrimary,
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
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Textcontainer(
                    Levels: 'Middle',
                    Colors: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Textcontainer(
                    Levels: 'Expert',
                    Colors: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                    activeColor: kPrimary,
                    checkColor: kButtonFbBlue,
                    value: remembers,
                    side: BorderSide(
                      color: kPrimary, width: 2.0, // The border width
                    ),
                    onChanged: (value) {
                      setState(() {
                        remembers = value!;
                      });
                    }),
                Text(
                  'Are You sure ?',
                  style: TextStyle(
                    color: kPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            ButtonCard(
              Pressed: () {
                Navigator.pushNamed(context, '/welcome');
              },
              text: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}
