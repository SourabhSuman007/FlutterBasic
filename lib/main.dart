import 'package:flutter/material.dart';

import './quiz.dart';
import './results.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//void ts() => print("qwerty");
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'Which anime did you like the most among listed?',
      'answer': [
        {'text': 'Naruto', 'score': 8},
        {'text': 'Attack on Titans', 'score': 10},
        {'text': 'One Peace', 'score': 7},
        {'text': 'One Punch man', 'score': 6},
        {'text': 'Dragon Ball Z', 'score': 5}
      ],
    },
    {
      'question': 'Do you play CSGO?',
      'answer': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 6}
      ],
    },
    {
      'question': 'Do you code?',
      'answer': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 5}
      ],
    },
    {
      'question': 'What is the color of the sky today?',
      'answer': [
        {'text': 'Blue', 'score': 9},
        {'text': 'White', 'score': 7},
        {'text': 'Red', 'score': 10},
        {'text': 'Purple', 'score': 10},
        {'text': 'I\'m blind, can\'t see.', 'score': 2}
      ],
    },
    {
      'question': 'What comes first?',
      'answer': [
        {'text': 'Hen', 'score': 10},
        {'text': 'Egg', 'score': 10}
      ],
    },
    {
      'question': 'How many colors does an Indian flag constitute?',
      'answer': [
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '3', 'score': 10},
        {'text': 'Nahi Pata!', 'score': 0}
      ],
    },
    {
      'question': 'What is a color of white?',
      'answer': [
        {'text': 'Obviously, White.', 'score': 6},
        {'text': 'Black', 'score': '0'},
        {'text': 'Combo of all colors.', 'score': 10}
      ],
    },
    {
      'question': 'What is a color of white?',
      'answer': [
        {'text': 'Obviously, Black.', 'score': 6},
        {'text': 'White', 'score': 0},
        {'text': 'It is not a color!!', 'score': 10}
      ],
    }
  ];

  var _qIndex = 0;
  var _totalS = 0;
  void _ansQ(int _score) {
    _totalS += _score;
    setState(() {
      _qIndex = _qIndex + 1;
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basics'),
        ),
        body: (_qIndex < _questions.length)
            ? Quiz(
                ansQ: _ansQ,
                questions: _questions,
                qIndex: _qIndex,
              )
            : Results(scores: _totalS, qNum: _questions.length),
      ),
    );
  }
}
