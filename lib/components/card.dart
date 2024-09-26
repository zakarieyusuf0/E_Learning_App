// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_learningapp/components/text.dart';
import 'package:e_learningapp/constants/constants.dart';
import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget image;

  const BoxCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: kCards,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: Offset(0, 0),
                blurRadius: 6,
                spreadRadius: 1,
              )
            ],
          ),
          child: Column(
            children: [
              Container(
                // height: 150,
                child: image,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: text(
                      textswidget: 'Arts & Hunmanities',
                      fontSized: 17,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: text(
                      textswidget: 'Draw and paint arts',
                      fontSized: 22,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: text(
                      textswidget: '2h 25min',
                      fontSized: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
