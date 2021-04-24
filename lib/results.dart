import 'package:flutter/material.dart';
import 'package:easy_gradient_text/easy_gradient_text.dart';

class Results extends StatelessWidget {
  final int scores;
  final int qNum;
  Results({@required this.scores, @required this.qNum});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: GradientText(
          text: 'You did it!!',
          colors: [Colors.red[600], Colors.orange[400]],
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          //textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
