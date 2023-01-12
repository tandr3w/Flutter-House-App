import 'package:flutter/material.dart';
import 'dart:math';

class TextBreak extends StatelessWidget {
  final String text;
  const TextBreak({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: max(MediaQuery.of(context).size.height / 12, 40),
      child: Center(
        child: Text(text, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
