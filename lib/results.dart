import 'package:flutter/material.dart';
import 'package:easy_gradient_text/easy_gradient_text.dart';

class Results extends StatelessWidget {
  final int scores;
  final int qNum;
  final Function restart;

  Results({@required this.scores, @required this.qNum, @required this.restart});

  String get setTag {
    String tag;
    if (scores >= qNum * 9 && scores <= qNum * 10) {
      tag = 'You are Genius!!';
    } else if (scores >= qNum * 8 && scores < qNum * 9) {
      tag = 'You are Awesome!!';
    } else if (scores >= qNum * 7 && scores < qNum * 8) {
      tag = 'You are cool :)';
    } else {
      tag = 'Only God can save you now ;)';
    }
    return tag;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding : EdgeInsets.all(35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GradientText(
            text: setTag,
            colors: [Colors.red[600], Colors.orange[400]],
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Restart Quiz!!'),
            onPressed: restart,
            autofocus: true,
            style: ElevatedButton.styleFrom(elevation: 10),
          ),
        ],
      ),
    );
  }
}
