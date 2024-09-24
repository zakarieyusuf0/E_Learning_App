// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Textcontainer extends StatelessWidget {
  final String Levels;
  final Color Colors;
  const Textcontainer({super.key, required this.Levels, required this.Colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
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
