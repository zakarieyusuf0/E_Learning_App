// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ButtonCard extends StatelessWidget {
  final String text;
  final Function() Pressed;

  const ButtonCard({
    super.key,
    required this.text,
    required this.Pressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: Pressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: kReusabaleColor,
                padding: EdgeInsets.all(15),
              ),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
