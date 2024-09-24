// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/constants.dart';

class text extends StatelessWidget {
  final String textswidget;
  const text({
    super.key,
    required this.textswidget,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textswidget,
        textAlign: TextAlign.center,
        style: TextStyle(
          letterSpacing: 2,
          color: kReusabaleColor,
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
