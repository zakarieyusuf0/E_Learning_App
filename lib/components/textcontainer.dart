// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Textcontainer extends StatelessWidget {
  final String Levels;
  final Color Colors;
  final dynamic padding;
  const Textcontainer(
      {super.key,
      required this.Levels,
      required this.Colors,
      required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors,
      ),
      child: Text(
        Levels,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xE0FFFFff),
          fontSize: 17,
        ),
      ),
    );
  }
}
