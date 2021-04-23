import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function ansQ;
  final List<Map<String, Object>> questions;
  final qIndex;
  Quiz({@required this.ansQ, @required this.questions, @required this.qIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      //invisible widgets
      children: [
        //list
        Question(questions[qIndex]['question']),
        //iterating over answer list in the map.
        ...(questions[qIndex]['answer'] as List<String>).map((answers) {
          return Answer(ansQ, answers);
        })
        // for (var answers in questions[_qIndex]['answer']){
        //   print ('$answers');
        // }
      ],
    );
  }
}
