import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qStr;
  Question(this.qStr);
  @override
  Widget build(BuildContext context) {
    return Text(qStr);
  }
}
