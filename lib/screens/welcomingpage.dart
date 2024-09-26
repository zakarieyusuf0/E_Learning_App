// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_learningapp/components/container.dart';
import 'package:e_learningapp/constants/constants.dart';
import 'package:flutter/material.dart';
import '../components/card.dart';
import '../components/text.dart';
import '../components/textcontainer.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScafold,
      appBar: AppBar(
        backgroundColor: kScafold,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/learning');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kPrimary,
          ),
        ),
        elevation: 4,
        centerTitle: true,
        title: text(
          textswidget: 'Home',
          fontSized: 20,
        ),
      ),
      body: ContainerCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(
              textswidget: 'Welcome Back Zakarie ',
              fontSized: 40,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Textcontainer(
                  Levels: 'Book Class',
                  Colors: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Textcontainer(
                  Levels: 'My Courses',
                  Colors: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            text(
              textswidget: 'Last Classes',
              fontSized: 25,
            ),
            const SizedBox(
              height: 15,
            ),
            //list view as hp
            Container(
              height: 300,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BoxCard(
                      image: Image.asset(
                        'assets/1.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 12),
                    BoxCard(
                      image: Image.asset(
                        'assets/2.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 12),
                    BoxCard(
                      image: Image.asset(
                        'assets/3.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 12),
                    BoxCard(
                      image: Image.asset(
                        'assets/4.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 12),
                    BoxCard(
                      image: Image.asset(
                        'assets/5.png',
                        height: 150,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.class_), label: 'My Classes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_outlined), label: 'Accounts'),
        ],
      ),
    );
  }
}
