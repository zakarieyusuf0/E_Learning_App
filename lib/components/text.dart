// ignore_for_file: prefer_const_constructors

import 'package:e_learningapp/constants/constants.dart';
import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final String textswidget;
  final double fontSized;
  const text({
    super.key,
    required this.textswidget,
    required this.fontSized,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textswidget,
      textAlign: TextAlign.start,
      style: TextStyle(
        letterSpacing: 2,
        color: kPrimary,
        fontSize: fontSized,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
